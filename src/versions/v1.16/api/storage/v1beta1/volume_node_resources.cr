# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1beta1::VolumeNodeResources; end

module K8S
  # Namespace holding the types for `Api::Storage::V1beta1::VolumeNodeResources`.
  module Types::Api::Storage::V1beta1::VolumeNodeResources
    # Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.
    abstract def count : Int32?
    # :ditto:
    abstract def count! : Int32
    # :ditto:
    abstract def count? : Int32?
    # :ditto:
    abstract def count=(value : Int32?)
  end

  # VolumeNodeResources is a set of resource limits for scheduling of volumes.
  @[::K8S::Properties(
    count: {key: "count", accessor: "count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1beta1::VolumeNodeResources < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1beta1::VolumeNodeResources

    # Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.
    def count : Int32?
      self.["count"].as(Int32?)
    end

    # :ditto:
    def count! : Int32
      self.["count"].as(Int32?).not_nil!
    end

    # :ditto:
    def count? : Int32?
      self.["count"]?.as(Int32?)
    end

    # :ditto:
    def count=(value : Int32?)
      self.["count"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "count", accessor: "count", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
