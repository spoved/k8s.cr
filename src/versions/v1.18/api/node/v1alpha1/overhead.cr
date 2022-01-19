# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Node::V1alpha1::Overhead; end

module K8S
  # Namespace holding the types for `Api::Node::V1alpha1::Overhead`.
  module Types::Api::Node::V1alpha1::Overhead
    alias ValueType = ::Hash(String, ::Int32 | ::String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # PodFixed represents the fixed resource overhead associated with running a pod.
    abstract def pod_fixed : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def pod_fixed! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def pod_fixed? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def pod_fixed=(value : ::Hash(String, ::Int32 | ::String)?)
  end

  # Overhead structure represents the resource overhead associated with running a pod.
  @[::K8S::Properties(
    pod_fixed: {key: "podFixed", accessor: "pod_fixed", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "PodFixed represents the fixed resource overhead associated with running a pod."},
  )]
  class Api::Node::V1alpha1::Overhead < ::K8S::Types::Api::Node::V1alpha1::Overhead::Instance
    include ::K8S::Types::Api::Node::V1alpha1::Overhead
    include ::K8S::Kubernetes::Object

    # PodFixed represents the fixed resource overhead associated with running a pod.
    def pod_fixed : ::Hash(String, ::Int32 | ::String)?
      self.["podFixed"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def pod_fixed! : ::Hash(String, ::Int32 | ::String)
      self.["podFixed"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def pod_fixed? : ::Hash(String, ::Int32 | ::String)?
      self.["podFixed"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def pod_fixed=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["podFixed"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "podFixed", accessor: "pod_fixed", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
      ])
end
  end
end
