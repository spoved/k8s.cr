# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HostPathVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type for HostPath Volume Defaults to \"\" More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},

  ]
)
