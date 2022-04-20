# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NFSVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "Path that is exported by the NFS server. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    {name: "server", kind: String, key: "server", nilable: false, read_only: false, description: "Server is the hostname or IP address of the NFS server. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},

  ]
)
