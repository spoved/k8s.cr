# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1beta1::CSINodeSpec; end

require "./csi_node_driver"

module K8S
  # Namespace holding the types for `Api::Storage::V1beta1::CSINodeSpec`.
  module Types::Api::Storage::V1beta1::CSINodeSpec
    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    abstract def drivers : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?
    # :ditto:
    abstract def drivers! : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)
    # :ditto:
    abstract def drivers? : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?
    # :ditto:
    abstract def drivers=(value : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?)
  end

  # CSINodeSpec holds information about the specification of all CSI drivers installed on a node
  @[::K8S::Properties(
    drivers: {key: "drivers", accessor: "drivers", kind: "::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)", nilable: true, default: nil, read_only: false, description: "drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1beta1::CSINodeSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1beta1::CSINodeSpec

    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    def drivers : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?
      self.["drivers"].as(::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?)
    end

    # :ditto:
    def drivers! : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)
      self.["drivers"].as(::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?).not_nil!
    end

    # :ditto:
    def drivers? : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?
      self.["drivers"]?.as(::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?)
    end

    # :ditto:
    def drivers=(value : ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver)?)
      self.["drivers"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "drivers", accessor: "drivers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Storage::V1beta1::CSINodeDriver) },
      ])
end
  end
end
