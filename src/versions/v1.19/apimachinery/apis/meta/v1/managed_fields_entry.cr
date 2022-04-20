# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./fields_v1"

::K8S::Kubernetes::Resource.define_object("ManagedFieldsEntry",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "APIVersion defines the version of this resource that this field set applies to. The format is [\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.](\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)"},
    {name: "fields_type", kind: String, key: "fieldsType", nilable: true, read_only: false, description: "FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\""},
    {name: "fields_v1", kind: ::K8S::Apimachinery::Apis::Meta::V1::FieldsV1, key: "fieldsV1", nilable: true, read_only: false, description: "FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type."},
    {name: "manager", kind: String, key: "manager", nilable: true, read_only: false, description: "Manager is an identifier of the workflow managing these fields."},
    {name: "operation", kind: String, key: "operation", nilable: true, read_only: false, description: "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."},
    {name: "time", kind: ::Time, key: "time", nilable: true, read_only: false, description: "Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'"},

  ]
)
