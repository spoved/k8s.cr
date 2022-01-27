# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Affinity; end

require "./node_affinity"
require "./pod_affinity"
require "./pod_anti_affinity"

module K8S
  # Namespace holding the types for `Api::Core::V1::Affinity`.
  module Types::Api::Core::V1::Affinity
    # Describes node affinity scheduling rules for the pod.
    abstract def node_affinity : ::K8S::Api::Core::V1::NodeAffinity?
    # :ditto:
    abstract def node_affinity! : ::K8S::Api::Core::V1::NodeAffinity
    # :ditto:
    abstract def node_affinity? : ::K8S::Api::Core::V1::NodeAffinity?
    # :ditto:
    abstract def node_affinity=(value : ::K8S::Api::Core::V1::NodeAffinity)
    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    abstract def pod_affinity : ::K8S::Api::Core::V1::PodAffinity?
    # :ditto:
    abstract def pod_affinity! : ::K8S::Api::Core::V1::PodAffinity
    # :ditto:
    abstract def pod_affinity? : ::K8S::Api::Core::V1::PodAffinity?
    # :ditto:
    abstract def pod_affinity=(value : ::K8S::Api::Core::V1::PodAffinity)
    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    abstract def pod_anti_affinity : ::K8S::Api::Core::V1::PodAntiAffinity?
    # :ditto:
    abstract def pod_anti_affinity! : ::K8S::Api::Core::V1::PodAntiAffinity
    # :ditto:
    abstract def pod_anti_affinity? : ::K8S::Api::Core::V1::PodAntiAffinity?
    # :ditto:
    abstract def pod_anti_affinity=(value : ::K8S::Api::Core::V1::PodAntiAffinity)
  end

  # Affinity is a group of affinity scheduling rules.
  @[::K8S::Properties(
    node_affinity: {key: "nodeAffinity", accessor: "node_affinity", kind: "::K8S::Api::Core::V1::NodeAffinity", nilable: true, default: nil, read_only: false, description: "Describes node affinity scheduling rules for the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_affinity: {key: "podAffinity", accessor: "pod_affinity", kind: "::K8S::Api::Core::V1::PodAffinity", nilable: true, default: nil, read_only: false, description: "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_anti_affinity: {key: "podAntiAffinity", accessor: "pod_anti_affinity", kind: "::K8S::Api::Core::V1::PodAntiAffinity", nilable: true, default: nil, read_only: false, description: "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Affinity < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Affinity
    k8s_object_accessor("nodeAffinity", node_affinity : ::K8S::Api::Core::V1::NodeAffinity, true, false, "Describes node affinity scheduling rules for the pod.")
    k8s_object_accessor("podAffinity", pod_affinity : ::K8S::Api::Core::V1::PodAffinity, true, false, "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).")
    k8s_object_accessor("podAntiAffinity", pod_anti_affinity : ::K8S::Api::Core::V1::PodAntiAffinity, true, false, "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).")

    def initialize(*, node_affinity : ::K8S::Api::Core::V1::NodeAffinity? = nil, pod_affinity : ::K8S::Api::Core::V1::PodAffinity? = nil, pod_anti_affinity : ::K8S::Api::Core::V1::PodAntiAffinity? = nil)
      super()
      self.["nodeAffinity"] = node_affinity
      self.["podAffinity"] = pod_affinity
      self.["podAntiAffinity"] = pod_anti_affinity
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "nodeAffinity", accessor: "node_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeAffinity},
      {key: "podAffinity", accessor: "pod_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodAffinity},
      {key: "podAntiAffinity", accessor: "pod_anti_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodAntiAffinity},
    ])
  end
end
