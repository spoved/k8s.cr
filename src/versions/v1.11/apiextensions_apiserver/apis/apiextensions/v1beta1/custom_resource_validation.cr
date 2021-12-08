# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceValidation is a list of validation methods for CustomResources.
  @[::K8S::Properties(
    open_apiv3_schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "openAPIV3Schema", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    include ::JSON::Serializable
    include ::YAML::Serializable

    # OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.
    @[::JSON::Field(key: "openAPIV3Schema", emit_null: false)]
    @[::YAML::Field(key: "openAPIV3Schema", emit_null: false)]
    property open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

    def initialize(*, @open_apiv3_schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil)
    end
  end
end
