# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceRequirements; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceRequirements`.
  module Types::Api::Core::V1::ResourceRequirements
    # Limits describes the maximum amount of compute resources allowed. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/))
    abstract def limits : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def limits! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def limits? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def limits=(value : ::Hash(String, ::Int32 | ::String)?)
    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/))
    abstract def requests : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def requests! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def requests? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def requests=(value : ::Hash(String, ::Int32 | ::String)?)
  end

  # ResourceRequirements describes the compute resource requirements.
  @[::K8S::Properties(
    limits: {key: "limits", accessor: "limits", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Limits describes the maximum amount of compute resources allowed. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    requests: {key: "requests", accessor: "requests", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ResourceRequirements < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ResourceRequirements

    # Limits describes the maximum amount of compute resources allowed. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/))
    def limits : ::Hash(String, ::Int32 | ::String)?
      self.["limits"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def limits! : ::Hash(String, ::Int32 | ::String)
      self.["limits"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def limits? : ::Hash(String, ::Int32 | ::String)?
      self.["limits"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def limits=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["limits"] = value
    end

    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/))
    def requests : ::Hash(String, ::Int32 | ::String)?
      self.["requests"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def requests! : ::Hash(String, ::Int32 | ::String)
      self.["requests"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def requests? : ::Hash(String, ::Int32 | ::String)?
      self.["requests"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def requests=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["requests"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "limits", accessor: "limits", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "requests", accessor: "requests", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
      ])
end
  end
end
