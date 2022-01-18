# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::Affinity; end

require "./node_affinity"
require "./pod_affinity"
require "./pod_anti_affinity"

module K8S
  # Namespace holding the types for `Api::Core::V1::Affinity`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::Affinity
    alias Key = String
    alias ValueType = ::K8S::Api::Core::V1::NodeAffinity | ::K8S::Api::Core::V1::PodAffinity | ::K8S::Api::Core::V1::PodAntiAffinity | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # Describes node affinity scheduling rules for the pod.
    abstract def node_affinity : ::K8S::Api::Core::V1::NodeAffinity?
    # :ditto:
    abstract def node_affinity! : ::K8S::Api::Core::V1::NodeAffinity
    # :ditto:
    abstract def node_affinity? : ::K8S::Api::Core::V1::NodeAffinity?
    # :ditto:
    abstract def node_affinity=(value : ::K8S::Api::Core::V1::NodeAffinity?)
    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    abstract def pod_affinity : ::K8S::Api::Core::V1::PodAffinity?
    # :ditto:
    abstract def pod_affinity! : ::K8S::Api::Core::V1::PodAffinity
    # :ditto:
    abstract def pod_affinity? : ::K8S::Api::Core::V1::PodAffinity?
    # :ditto:
    abstract def pod_affinity=(value : ::K8S::Api::Core::V1::PodAffinity?)
    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    abstract def pod_anti_affinity : ::K8S::Api::Core::V1::PodAntiAffinity?
    # :ditto:
    abstract def pod_anti_affinity! : ::K8S::Api::Core::V1::PodAntiAffinity
    # :ditto:
    abstract def pod_anti_affinity? : ::K8S::Api::Core::V1::PodAntiAffinity?
    # :ditto:
    abstract def pod_anti_affinity=(value : ::K8S::Api::Core::V1::PodAntiAffinity?)
  end

  # Affinity is a group of affinity scheduling rules.
  @[::K8S::Properties(
    node_affinity: {key: "nodeAffinity", accessor: "node_affinity", kind: "::K8S::Api::Core::V1::NodeAffinity", nilable: true, default: nil, read_only: false, description: "Describes node affinity scheduling rules for the pod."},
    pod_affinity: {key: "podAffinity", accessor: "pod_affinity", kind: "::K8S::Api::Core::V1::PodAffinity", nilable: true, default: nil, read_only: false, description: "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."},
    pod_anti_affinity: {key: "podAntiAffinity", accessor: "pod_anti_affinity", kind: "::K8S::Api::Core::V1::PodAntiAffinity", nilable: true, default: nil, read_only: false, description: "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."},
  )]
  class Api::Core::V1::Affinity < ::K8S::Types::Api::Core::V1::Affinity::Instance
    include ::K8S::Types::Api::Core::V1::Affinity
    include ::K8S::Kubernetes::Object

    # Describes node affinity scheduling rules for the pod.
    def node_affinity : ::K8S::Api::Core::V1::NodeAffinity?
      self.["nodeAffinity"].as(::K8S::Api::Core::V1::NodeAffinity?)
    end

    # :ditto:
    def node_affinity! : ::K8S::Api::Core::V1::NodeAffinity
      self.["nodeAffinity"].as(::K8S::Api::Core::V1::NodeAffinity?).not_nil!
    end

    # :ditto:
    def node_affinity? : ::K8S::Api::Core::V1::NodeAffinity?
      self.["nodeAffinity"]?.as(::K8S::Api::Core::V1::NodeAffinity?)
    end

    # :ditto:
    def node_affinity=(value : ::K8S::Api::Core::V1::NodeAffinity?)
      self.["nodeAffinity"] = value
    end

    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    def pod_affinity : ::K8S::Api::Core::V1::PodAffinity?
      self.["podAffinity"].as(::K8S::Api::Core::V1::PodAffinity?)
    end

    # :ditto:
    def pod_affinity! : ::K8S::Api::Core::V1::PodAffinity
      self.["podAffinity"].as(::K8S::Api::Core::V1::PodAffinity?).not_nil!
    end

    # :ditto:
    def pod_affinity? : ::K8S::Api::Core::V1::PodAffinity?
      self.["podAffinity"]?.as(::K8S::Api::Core::V1::PodAffinity?)
    end

    # :ditto:
    def pod_affinity=(value : ::K8S::Api::Core::V1::PodAffinity?)
      self.["podAffinity"] = value
    end

    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    def pod_anti_affinity : ::K8S::Api::Core::V1::PodAntiAffinity?
      self.["podAntiAffinity"].as(::K8S::Api::Core::V1::PodAntiAffinity?)
    end

    # :ditto:
    def pod_anti_affinity! : ::K8S::Api::Core::V1::PodAntiAffinity
      self.["podAntiAffinity"].as(::K8S::Api::Core::V1::PodAntiAffinity?).not_nil!
    end

    # :ditto:
    def pod_anti_affinity? : ::K8S::Api::Core::V1::PodAntiAffinity?
      self.["podAntiAffinity"]?.as(::K8S::Api::Core::V1::PodAntiAffinity?)
    end

    # :ditto:
    def pod_anti_affinity=(value : ::K8S::Api::Core::V1::PodAntiAffinity?)
      self.["podAntiAffinity"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nodeAffinity", accessor: "node_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeAffinity },
        { key: "podAffinity", accessor: "pod_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodAffinity },
        { key: "podAntiAffinity", accessor: "pod_anti_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodAntiAffinity },
      ])
end
  end
end
