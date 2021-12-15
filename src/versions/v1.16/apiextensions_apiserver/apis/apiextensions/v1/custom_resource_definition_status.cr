# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  @[::K8S::Properties(
    accepted_names: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, nilable: false, key: "acceptedNames", getter: false, setter: false},
    conditions: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition), nilable: true, key: "conditions", getter: false, setter: false},
    stored_versions: {type: Array(String), nilable: false, key: "storedVersions", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
    @[::JSON::Field(key: "acceptedNames", emit_null: true)]
    @[::YAML::Field(key: "acceptedNames", emit_null: true)]
    property accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames

    # conditions indicate state for particular aspects of a CustomResourceDefinition
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition) | Nil

    # storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
    @[::JSON::Field(key: "storedVersions", emit_null: true)]
    @[::YAML::Field(key: "storedVersions", emit_null: true)]
    property stored_versions : Array(String)

    def initialize(*, @accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, @stored_versions : Array, @conditions : Array | Nil = nil)
    end
  end
end
