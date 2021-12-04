# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # JSONSchemaPropsOrStringArray represents a JSONSchemaProps or a string array.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray
    include ::JSON::Serializable
    include ::YAML::Serializable

    property property : Array(String)

    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps

    ::YAML.mapping({
      property: {type: Array(String), nilable: false, key: "Property", getter: false, setter: false},
      schema:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      property: {type: Array(String), nilable: false, key: "Property", getter: false, setter: false},
      schema:   {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: false, key: "Schema", getter: false, setter: false},
    }, true)

    def initialize(*, @property : Array, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    end
  end
end
