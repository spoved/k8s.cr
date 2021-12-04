# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::GlusterfsPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    property endpoints : String

    # EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    property endpoints_namespace : String | Nil

    # Path is the Glusterfs volume path. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    property path : String

    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    property read_only : Bool | Nil

    ::YAML.mapping({
      endpoints:           {type: String, nilable: false, key: "endpoints", getter: false, setter: false},
      endpoints_namespace: {type: String, nilable: true, key: "endpointsNamespace", getter: false, setter: false},
      path:                {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only:           {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      endpoints:           {type: String, nilable: false, key: "endpoints", getter: false, setter: false},
      endpoints_namespace: {type: String, nilable: true, key: "endpointsNamespace", getter: false, setter: false},
      path:                {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only:           {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    def initialize(*, @endpoints : String, @path : String, @endpoints_namespace : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
