# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::WeightedPodAffinityTerm; end

require "./pod_affinity_term"

module K8S
  # Namespace holding the types for `Api::Core::V1::WeightedPodAffinityTerm`.
  module Types::Api::Core::V1::WeightedPodAffinityTerm
    alias ValueType = ::K8S::Api::Core::V1::PodAffinityTerm | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Required. A pod affinity term, associated with the corresponding weight.
    abstract def pod_affinity_term : ::K8S::Api::Core::V1::PodAffinityTerm
    # :ditto:
    abstract def pod_affinity_term! : ::K8S::Api::Core::V1::PodAffinityTerm
    # :ditto:
    abstract def pod_affinity_term? : ::K8S::Api::Core::V1::PodAffinityTerm?
    # :ditto:
    abstract def pod_affinity_term=(value : ::K8S::Api::Core::V1::PodAffinityTerm)
    # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    abstract def weight : Int32
    # :ditto:
    abstract def weight! : Int32
    # :ditto:
    abstract def weight? : Int32?
    # :ditto:
    abstract def weight=(value : Int32)
  end

  # The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
  @[::K8S::Properties(
    pod_affinity_term: {key: "podAffinityTerm", accessor: "pod_affinity_term", kind: "::K8S::Api::Core::V1::PodAffinityTerm", nilable: false, default: nil, read_only: false, description: "Required. A pod affinity term, associated with the corresponding weight.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    weight: {key: "weight", accessor: "weight", kind: "Int32", nilable: false, default: nil, read_only: false, description: "weight associated with matching the corresponding podAffinityTerm, in the range 1-100.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::WeightedPodAffinityTerm < ::K8S::Types::Api::Core::V1::WeightedPodAffinityTerm::Instance
    include ::K8S::Types::Api::Core::V1::WeightedPodAffinityTerm
    include ::K8S::Kubernetes::Object

    # Required. A pod affinity term, associated with the corresponding weight.
    def pod_affinity_term : ::K8S::Api::Core::V1::PodAffinityTerm
      self.["podAffinityTerm"].as(::K8S::Api::Core::V1::PodAffinityTerm)
    end

    # :ditto:
    def pod_affinity_term! : ::K8S::Api::Core::V1::PodAffinityTerm
      self.["podAffinityTerm"].as(::K8S::Api::Core::V1::PodAffinityTerm).not_nil!
    end

    # :ditto:
    def pod_affinity_term? : ::K8S::Api::Core::V1::PodAffinityTerm?
      self.["podAffinityTerm"]?.as(::K8S::Api::Core::V1::PodAffinityTerm?)
    end

    # :ditto:
    def pod_affinity_term=(value : ::K8S::Api::Core::V1::PodAffinityTerm)
      self.["podAffinityTerm"] = value
    end

    # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    def weight : Int32
      self.["weight"].as(Int32)
    end

    # :ditto:
    def weight! : Int32
      self.["weight"].as(Int32).not_nil!
    end

    # :ditto:
    def weight? : Int32?
      self.["weight"]?.as(Int32?)
    end

    # :ditto:
    def weight=(value : Int32)
      self.["weight"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "podAffinityTerm", accessor: "pod_affinity_term", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodAffinityTerm },
        { key: "weight", accessor: "weight", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
