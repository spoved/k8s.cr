# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("APIResource",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "categories", kind: ::Array(String), key: "categories", nilable: true, read_only: false, description: "categories is a list of the grouped resources this resource belongs to (e.g. 'all')"},
    {name: "group", kind: String, key: "group", nilable: true, read_only: false, description: "group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\"."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the plural name of the resource."},
    {name: "namespaced", kind: ::Bool, key: "namespaced", nilable: false, read_only: false, description: "namespaced indicates if a resource is namespaced or not."},
    {name: "short_names", kind: ::Array(String), key: "shortNames", nilable: true, read_only: false, description: "shortNames is a list of suggested short names of the resource."},
    {name: "singular_name", kind: String, key: "singularName", nilable: false, read_only: false, description: "singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface."},
    {name: "storage_version_hash", kind: String, key: "storageVersionHash", nilable: true, read_only: false, description: "The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates."},
    {name: "verbs", kind: ::Array(String), key: "verbs", nilable: false, read_only: false, description: "verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)"},
    {name: "version", kind: String, key: "version", nilable: true, read_only: false, description: "version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\"."},

  ]
)
