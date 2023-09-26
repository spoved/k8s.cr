# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "claim_name", kind: String, key: "claimName", nilable: false, read_only: false, description: "claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly Will force the ReadOnly setting in VolumeMounts. Default false."},

  ]
)
