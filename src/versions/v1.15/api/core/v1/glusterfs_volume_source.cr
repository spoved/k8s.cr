# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("GlusterfsVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "endpoints", kind: String, key: "endpoints", nilable: false, read_only: false, description: "EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)"},
    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "Path is the Glusterfs volume path. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)"},

  ]
)
