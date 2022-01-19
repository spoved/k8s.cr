# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceRequirements; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceRequirements`.
  module Types::Api::Core::V1::ResourceRequirements
    alias ValueType = ::Hash(String, ::Int32 | ::String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Limits describes the maximum amount of compute resources allowed. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/))
    abstract def limits : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def limits! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def limits? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def limits=(value : ::Hash(String, ::Int32 | ::String)?)
    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/))
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
    limits: {key: "limits", accessor: "limits", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Limits describes the maximum amount of compute resources allowed. More info: [https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)"},
    requests: {key: "requests", accessor: "requests", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)"},
  )]
  class Api::Core::V1::ResourceRequirements < ::K8S::Types::Api::Core::V1::ResourceRequirements::Instance
    include ::K8S::Types::Api::Core::V1::ResourceRequirements
    include ::K8S::Kubernetes::Object

    # Limits describes the maximum amount of compute resources allowed. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/))
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

    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/))
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
