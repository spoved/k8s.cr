# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray
    include ::JSON::Serializable
    include ::YAML::Serializable

    property json_schemas : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)

    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    ::YAML.mapping({
      json_schemas: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: false, key: "JSONSchemas", getter: false, setter: false},
      schema:       {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      json_schemas: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: false, key: "JSONSchemas", getter: false, setter: false},
      schema:       {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @json_schemas : Array, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    end
  end
end
