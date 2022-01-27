# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::AzureFileVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::AzureFileVolumeSource`.
  module Types::Api::Core::V1::AzureFileVolumeSource
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # the name of secret that contains Azure Storage Account Name and Key
    abstract def secret_name : String?
    # :ditto:
    abstract def secret_name! : String
    # :ditto:
    abstract def secret_name? : String?
    # :ditto:
    abstract def secret_name=(value : String)
    # Share Name
    abstract def share_name : String?
    # :ditto:
    abstract def share_name! : String
    # :ditto:
    abstract def share_name? : String?
    # :ditto:
    abstract def share_name=(value : String)
  end

  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  @[::K8S::Properties(
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_name: {key: "secretName", accessor: "secret_name", kind: "String", nilable: false, default: nil, read_only: false, description: "the name of secret that contains Azure Storage Account Name and Key", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    share_name: {key: "shareName", accessor: "share_name", kind: "String", nilable: false, default: nil, read_only: false, description: "Share Name", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::AzureFileVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::AzureFileVolumeSource
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)")
    k8s_object_accessor("secretName", secret_name : String, false, false, "the name of secret that contains Azure Storage Account Name and Key")
    k8s_object_accessor("shareName", share_name : String, false, false, "Share Name")

    def initialize(*, read_only : ::Bool? = nil, secret_name : String? = nil, share_name : String? = nil)
      super()
      self.["readOnly"] = read_only
      self.["secretName"] = secret_name
      self.["shareName"] = share_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretName", accessor: "secret_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "shareName", accessor: "share_name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
