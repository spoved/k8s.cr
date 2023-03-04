require "json"
require "yaml"
require "./error"

# :nodoc:
macro k8s_sanitize_api(api)
  {{api}}.gsub(/(\.authorization)?\.k8s\.io/, "")
end

# This macro creates a new resource object based on the provided group, version, kind, and object
macro k8s_new_resource(group, ver, kind, obj)

  # create an empty hash to store other resources that match the provided group, version, and kind
  {% others = {} of StringLiteral => TypeNode %}

  # loop through all subclasses of K8S::Kubernetes::Resource
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    # if the resource is not abstract and has a GroupVersionKind annotation
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      # loop through all GroupVersionKind annotations on the resource
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %}

      # create a string representation of the group, version, and kind of the resource
      # and check if it exists in the others hash, if not, add the resource to the others hash
      {%
        value = "{#{anno[:group]},#{anno[:version]},#{anno[:kind]}}"
        if !others[value]
          others[value] = resource
        end

        # create another string representation of the group, version, and kind of the resource
        # but with the .authorization and .k8s.io suffixes removed from the group, and check
        # if it exists in the others hash, if not, add the resource to the others hash
        value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}"
        if !others[value]
          others[value] = resource
        end

        # if the group is empty, create a string representation with "core" as the group,
        # and check if it exists in the others hash, if not, add the resource to the others hash
        if anno[:group] == ""
          value = %<{"core",#{anno[:version]},#{anno[:kind]}}>
          if !others[value]
            others[value] = resource
          end
        end
      %}
      {% end %}
    {% end %}
  {% end %}

  # loop through all mappings in K8S::Kubernetes::Resource::MAPPINGS
  {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %}

    # split the mapping into group and kind, and create a string representation of the group, version, and kind
    # check if it exists in the others hash, if not, add the resolved mapping to the others hash
    {%
      split = mapping[0].split('/')
      if split.size == 2
        value = "{#{split.first},#{split.last},#{mapping[1].split("::").last}}"
        if !others[value]
          others[value] = mapping[2].resolve
        end
      else
        value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}>
        if !others[value]
          others[value] = mapping[2].resolve
        end
      end
    %}
  {% end %}

  # use a case statement to check if the provided group, version, and kind match any of the resources in the others hash
  case { {{group}}, {{ver}}, {{kind}} }
  {% for key, resource in others %}
  when {{key.id}}
    # if a match is found, create a new object of the matching resource type with the provided object and return it
    {{resource.id}}.new({{obj}})
  {% end %}
  else
    Log.trace &.emit %<Unknown api resource: "#{{{group}}}/#{{{ver}}}/#{{{kind}}}">,
      group: {{group}}.to_s, version: {{ver}}.to_s, kind: {{kind}}.to_s

    if {{kind}} =~ /List$/ && {{obj}}[:items]?
      raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}", K8S::Api::Core::V1::List.new({{obj}}))
    else
      raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}", K8S::Kubernetes::Resource::Generic.new({{obj}}))
    end
  end
end

# :nodoc:
macro k8s_resource_class(group, ver, kind)
  {% others = {} of StringLiteral => TypeNode %} # create an empty hash to store resource mappings
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %} # loop through all subclasses of the Resource class
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %} # check if the resource is not abstract and has the GroupVersionKind annotation
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %} # loop through all GroupVersionKind annotations of the resource
      {%
        value = "{#{anno[:group]},#{anno[:version]},#{anno[:kind]}}" # construct a unique string to represent the resource
        if !others[value]                                            # if the value has not been seen before
          others[value] = resource                                   # add the resource to the others hash
        end
        value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}" # construct another unique string to represent the resource with authorization removed from group if it exists
        if !others[value]                                                                                    # if the value has not been seen before
          others[value] = resource                                                                           # add the resource to the others hash
        end

        if anno[:group] == ""                                  # if the group is empty
          value = %<{"core",#{anno[:version]},#{anno[:kind]}}> # construct a unique string for the core group
          if !others[value]                                    # if the value has not been seen before
            others[value] = resource                           # add the resource to the others hash
          end
        end
      %}
      {% end %}
    {% end %}
  {% end %}
  {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %} # loop through the resource mappings
    {%
      split = mapping[0].split('/')                                             # split the resource name into group and kind
      if split.size == 2                                                        # if group and kind are present
        value = "{#{split.first},#{split.last},#{mapping[1].split("::").last}}" # construct a unique string to represent the resource
        if !others[value]                                                       # if the value has not been seen before
          others[value] = mapping[2].resolve                                    # add the resource to the others hash
        end
      else                                                           # if group is not present
        value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}> # construct a unique string to represent the resource
        if !others[value]                                            # if the value has not been seen before
          others[value] = mapping[2].resolve                         # add the resource to the others hash
        end
      end
    %}
  {% end %}

  case { {{group}}, {{ver}}, {{kind}} } # match the given group, version, and kind against the others hash
  {% for key, resource in others %} # loop through the others hash
  when {{key.id}} # if the key matches the given group, version, and kind
    {{resource.id}} # return the corresponding resource class
  {% end %}
  else # if no match is found
    Log.trace &.emit %<Unknown api resource: "#{{{group}}}/#{{{ver}}}/#{{{kind}}}">, # log an error message
      group: {{group}}.to_s, version: {{ver}}.to_s, kind: {{kind}}.to_s

    raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}")
  end
end
