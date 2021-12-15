# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    fields_type: {type: String, nilable: true, key: "fieldsType", getter: false, setter: false},
    fields_v1: {type: Apimachinery::Apis::Meta::V1::FieldsV1, nilable: true, key: "fieldsV1", getter: false, setter: false},
    manager: {type: String, nilable: true, key: "manager", getter: false, setter: false},
    operation: {type: String, nilable: true, key: "operation", getter: false, setter: false},
    time: {type: Time, nilable: true, key: "time", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::ManagedFieldsEntry
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIVersion defines the version of this resource that this field set applies to. The format is ["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
    @[::JSON::Field(key: "fieldsType", emit_null: false)]
    @[::YAML::Field(key: "fieldsType", emit_null: false)]
    property fields_type : String | Nil

    # FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
    @[::JSON::Field(key: "fieldsV1", emit_null: false)]
    @[::YAML::Field(key: "fieldsV1", emit_null: false)]
    property fields_v1 : Apimachinery::Apis::Meta::V1::FieldsV1 | Nil

    # Manager is an identifier of the workflow managing these fields.
    @[::JSON::Field(key: "manager", emit_null: false)]
    @[::YAML::Field(key: "manager", emit_null: false)]
    property manager : String | Nil

    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    @[::JSON::Field(key: "operation", emit_null: false)]
    @[::YAML::Field(key: "operation", emit_null: false)]
    property operation : String | Nil

    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    @[::JSON::Field(key: "time", emit_null: false)]
    @[::YAML::Field(key: "time", emit_null: false)]
    property time : Time | Nil

    def initialize(*, @api_version : String | Nil = nil, @fields_type : String | Nil = nil, @fields_v1 : Apimachinery::Apis::Meta::V1::FieldsV1 | Nil = nil, @manager : String | Nil = nil, @operation : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end
