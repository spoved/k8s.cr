# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    endpoints: {type: String, nilable: false, key: "endpoints", getter: false, setter: false},
    endpoints_namespace: {type: String, nilable: true, key: "endpointsNamespace", getter: false, setter: false},
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
  )]
  class Api::Core::V1::GlusterfsPersistentVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "endpoints", emit_null: true)]
    @[::YAML::Field(key: "endpoints", emit_null: true)]
    property endpoints : String

    # EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "endpointsNamespace", emit_null: false)]
    @[::YAML::Field(key: "endpointsNamespace", emit_null: false)]
    property endpoints_namespace : String | Nil

    # Path is the Glusterfs volume path. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    def initialize(*, @endpoints : String, @path : String, @endpoints_namespace : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
