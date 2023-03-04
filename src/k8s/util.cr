require "hashdiff"
require "yaml"
require "json"

module K8S
  # Miscellaneous helpers
  module Util
    extend self
    PATH_TR_MAP = {"~" => "~0", "/" => "~1"}
    PATH_REGEX  = %r{(/|~(?!1))}

    # This method initializes and returns an instance of a Kubernetes resource object
    # based on the information in the provided obj parameter.
    #
    # ```
    # obj = {
    #   kind:       "Deployment",
    #   apiVersion: "apps/v1",
    #   metadata:   {
    #     name:   "my-deployment",
    #     labels: {
    #       app: "my-app",
    #     },
    #   },
    #   spec: {
    #     replicas: 3,
    #     selector: {
    #       matchLabels: {
    #         app: "my-app",
    #       },
    #     },
    #     template: {
    #       metadata: {
    #         labels: {
    #           app: "my-app",
    #         },
    #       },
    #       spec: {
    #         containers: [
    #           {
    #             name:  "my-container",
    #             image: "my-image",
    #           },
    #         ],
    #       },
    #     },
    #   },
    # }
    #
    # resource = new_resource(obj)
    #
    # # You can now use the returned resource object
    # api_version = resource.api_version
    # kind = resource.kind
    # metadata = resource.metadata
    # spec = resource.spec
    # ```
    def new_resource(obj)
      # Check if the object represents an APIResourceList, and initialize an
      # instance of K8S::Apimachinery::Apis::Meta::V1::APIResourceList if so.
      if obj[:kind]? && obj[:kind] == "APIResourceList"
        return K8S::Apimachinery::Apis::Meta::V1::APIResourceList.new(obj)
      end

      # Determine the API version of the object.
      api_ver = (obj[:apiVersion]? || obj[:api_version]?)
      api_ver = api_ver.as_s if api_ver.is_a?(JSON::Any) || api_ver.is_a?(YAML::Any)

      # If the object represents an error with a 4xx status code, and the API version
      # is not defined, initialize an instance of K8S::Apimachinery::Apis::Meta::V1::Status
      # with the error details.
      # NOTE: This may be rancher specific api behavior.
      if obj[:type]? == "error" && obj[:status]? =~ /^4\d\d/ && api_ver.nil?
        return K8S::Apimachinery::Apis::Meta::V1::Status.new(
          code: obj[:status].as(String).to_i,
          message: obj[:message].as(String),
        )
      end

      # Ensure that the API version is defined, and raise an error if it is not.
      api_ver = api_ver.as(String?)
      raise K8S::Kubernetes::Resource::Error.new "Undefined api version" if api_ver.nil?

      # If the API version contains a slash, split it into the group and version,
      # and call k8s_new_resource to initialize the corresponding resource instance.
      if api_ver =~ /\//
        parts = api_ver.split("/")
        ver = parts.pop
        group = parts.empty? ? "" : parts.shift
        k8s_new_resource(group: group, ver: ver, kind: obj[:kind], obj: obj)
      else
        # If the API version does not contain a slash, call k8s_new_resource
        # with an empty group and the API version as the version parameter.
        k8s_new_resource(group: "", ver: api_ver, kind: obj[:kind], obj: obj)
      end
    end

    # This method returns the corresponding Kubernetes resource class for the provided Kubernetes object.
    # It extracts the API version from the Kubernetes object and uses it to determine the resource class.
    # If the API version is in the format of "group/version", the method splits the version string
    # into its corresponding group and version parts, and then gets the resource class using `#k8s_resource_class`.
    # Otherwise, it assumes the group is an empty string and gets the resource class using `#k8s_resource_class`.
    def get_resource_klass(obj)
      Log.trace &.emit "get_resource_klass", **obj
      api_ver = (obj[:apiVersion]? || obj[:api_version]?)
      api_ver = api_ver.as_s if api_ver.is_a?(JSON::Any) || api_ver.is_a?(YAML::Any)

      api_ver = api_ver.as(String?)
      return nil if api_ver.nil?
      api_ver = k8s_sanitize_api(api_ver)

      if api_ver =~ /\//
        parts = api_ver.split("/")
        ver = parts.pop
        group = parts.empty? ? "" : parts.shift
        Log.trace &.emit "get_resource_klass", group: group, ver: ver, kind: obj[:kind]
        k8s_resource_class(group: group, ver: ver, kind: obj[:kind])
      else
        Log.trace &.emit "get_resource_klass", group: "", ver: api_ver, kind: obj[:kind]
        k8s_resource_class(group: "", ver: api_ver, kind: obj[:kind])
      end
    end
  end
end

require "./util/*"
