# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::FlockerVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::FlockerVolumeSource`.
  module Types::Api::Core::V1::FlockerVolumeSource
    # Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
    abstract def dataset_name : String?
    # :ditto:
    abstract def dataset_name! : String
    # :ditto:
    abstract def dataset_name? : String?
    # :ditto:
    abstract def dataset_name=(value : String)
    # UUID of the dataset. This is unique identifier of a Flocker dataset
    abstract def dataset_uuid : String?
    # :ditto:
    abstract def dataset_uuid! : String
    # :ditto:
    abstract def dataset_uuid? : String?
    # :ditto:
    abstract def dataset_uuid=(value : String)
  end

  # Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    dataset_name: {key: "datasetName", accessor: "dataset_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dataset_uuid: {key: "datasetUUID", accessor: "dataset_uuid", kind: "String", nilable: true, default: nil, read_only: false, description: "UUID of the dataset. This is unique identifier of a Flocker dataset", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::FlockerVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::FlockerVolumeSource
    k8s_object_accessor("datasetName", dataset_name : String, true, false, "Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated")
    k8s_object_accessor("datasetUUID", dataset_uuid : String, true, false, "UUID of the dataset. This is unique identifier of a Flocker dataset")

    def initialize(*, dataset_name : String? = nil, dataset_uuid : String? = nil)
      super()
      self.["datasetName"] = dataset_name
      self.["datasetUUID"] = dataset_uuid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "datasetName", accessor: "dataset_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "datasetUUID", accessor: "dataset_uuid", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
