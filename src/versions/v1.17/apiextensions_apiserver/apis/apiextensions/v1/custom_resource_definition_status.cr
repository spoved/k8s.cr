# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_definition_names"
require "./custom_resource_definition_condition"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionStatus",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "accepted_names", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, key: "acceptedNames", nilable: false, read_only: false, description: "acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec."},
    {name: "conditions", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition), key: "conditions", nilable: true, read_only: false, description: "conditions indicate state for particular aspects of a CustomResourceDefinition"},
    {name: "stored_versions", kind: ::Array(String), key: "storedVersions", nilable: false, read_only: false, description: "storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list."},

  ]
)
