# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_definition_names"
require "./custom_resource_definition_condition"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionStatus",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "accepted_names", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, key: "acceptedNames", nilable: false, read_only: false, description: "AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec."},
    {name: "conditions", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition), key: "conditions", nilable: false, read_only: false, description: "Conditions indicate state for particular aspects of a CustomResourceDefinition"},
    {name: "stored_versions", kind: ::Array(String), key: "storedVersions", nilable: false, read_only: false, description: "StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field."},

  ]
)
