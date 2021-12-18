# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  @[::K8S::Properties(
    accepted_names: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: false, key: "acceptedNames", getter: false, setter: false},
    conditions: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition), nilable: false, key: "conditions", getter: false, setter: false},
    stored_versions: {type: Array(String), nilable: false, key: "storedVersions", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec.
    @[::JSON::Field(key: "acceptedNames", emit_null: true)]
    @[::YAML::Field(key: "acceptedNames", emit_null: true)]
    property accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Conditions indicate state for particular aspects of a CustomResourceDefinition
    @[::JSON::Field(key: "conditions", emit_null: true)]
    @[::YAML::Field(key: "conditions", emit_null: true)]
    property conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)

    # StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field.
    @[::JSON::Field(key: "storedVersions", emit_null: true)]
    @[::YAML::Field(key: "storedVersions", emit_null: true)]
    property stored_versions : Array(String)

    def initialize(*, @accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition), @stored_versions : Array(String))
    end
  end
end
