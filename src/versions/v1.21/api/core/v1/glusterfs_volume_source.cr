# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::GlusterfsVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::GlusterfsVolumeSource`.
  module Types::Api::Core::V1::GlusterfsVolumeSource
    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod))
    abstract def endpoints : String?
    # :ditto:
    abstract def endpoints! : String
    # :ditto:
    abstract def endpoints? : String?
    # :ditto:
    abstract def endpoints=(value : String)
    # Path is the Glusterfs volume path. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod))
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
  end

  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    endpoints: {key: "endpoints", accessor: "endpoints", kind: "String", nilable: false, default: nil, read_only: false, description: "EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path is the Glusterfs volume path. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::GlusterfsVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::GlusterfsVolumeSource
    k8s_object_accessor("endpoints", endpoints : String, false, false, "EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)")
    k8s_object_accessor("path", path : String, false, false, "Path is the Glusterfs volume path. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)")

    def initialize(*, endpoints : String? = nil, path : String? = nil, read_only : ::Bool? = nil)
      super()
      self.["endpoints"] = endpoints
      self.["path"] = path
      self.["readOnly"] = read_only
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "endpoints", accessor: "endpoints", nilable: false, read_only: false, default: nil, kind: String},
      {key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
