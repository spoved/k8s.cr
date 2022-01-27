# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::HostPathVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::HostPathVolumeSource`.
  module Types::Api::Core::V1::HostPathVolumeSource
    # Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
    # Type for HostPath Volume Defaults to "" More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type for HostPath Volume Defaults to \"\" More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::HostPathVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::HostPathVolumeSource
    k8s_object_accessor("path", path : String, false, false, "Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)")
    k8s_object_accessor("type", type : String, true, false, "Type for HostPath Volume Defaults to \"\" More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)")

    def initialize(*, path : String? = nil, type : String? = nil)
      super()
      self.["path"] = path
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
