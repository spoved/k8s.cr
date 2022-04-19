# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("OwnerReference",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: false, read_only: false, description: "API version of the referent."},
    {name: "block_owner_deletion", kind: ::Bool, key: "blockOwnerDeletion", nilable: true, read_only: false, description: "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."},
    {name: "controller", kind: ::Bool, key: "controller", nilable: true, read_only: false, description: "If true, this reference points to the managing controller."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)"},
    {name: "uid", kind: String, key: "uid", nilable: false, read_only: false, description: "UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)"},

  ]
)
