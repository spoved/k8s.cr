# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./json_schema_props_or_bool"
require "./json_schema_props"
require "./json"
require "./json_schema_props_or_string_array"
require "./external_documentation"
require "./json_schema_props_or_array"

::K8S::Kubernetes::Resource.define_object("JsonSchemaProps",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "ref", kind: String, key: "$ref", nilable: true, read_only: false, description: nil},
    {name: "schema", kind: String, key: "$schema", nilable: true, read_only: false, description: nil},
    {name: "additional_items", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrBool, key: "additionalItems", nilable: true, read_only: false, description: nil},
    {name: "additional_properties", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrBool, key: "additionalProperties", nilable: true, read_only: false, description: nil},
    {name: "all_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "allOf", nilable: true, read_only: false, description: nil},
    {name: "any_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "anyOf", nilable: true, read_only: false, description: nil},
    {name: "default", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::Json, key: "default", nilable: true, read_only: false, description: nil},
    {name: "definitions", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "definitions", nilable: true, read_only: false, description: nil},
    {name: "dependencies", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrStringArray), key: "dependencies", nilable: true, read_only: false, description: nil},
    {name: "description", kind: String, key: "description", nilable: true, read_only: false, description: nil},
    {name: "_enum", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::Json), key: "enum", nilable: true, read_only: false, description: nil},
    {name: "example", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::Json, key: "example", nilable: true, read_only: false, description: nil},
    {name: "exclusive_maximum", kind: ::Bool, key: "exclusiveMaximum", nilable: true, read_only: false, description: nil},
    {name: "exclusive_minimum", kind: ::Bool, key: "exclusiveMinimum", nilable: true, read_only: false, description: nil},
    {name: "external_docs", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation, key: "externalDocs", nilable: true, read_only: false, description: nil},
    {name: "format", kind: String, key: "format", nilable: true, read_only: false, description: nil},
    {name: "id", kind: String, key: "id", nilable: true, read_only: false, description: nil},
    {name: "items", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrArray, key: "items", nilable: true, read_only: false, description: nil},
    {name: "max_items", kind: Int32, key: "maxItems", nilable: true, read_only: false, description: nil},
    {name: "max_length", kind: Int32, key: "maxLength", nilable: true, read_only: false, description: nil},
    {name: "max_properties", kind: Int32, key: "maxProperties", nilable: true, read_only: false, description: nil},
    {name: "maximum", kind: Int32, key: "maximum", nilable: true, read_only: false, description: nil},
    {name: "min_items", kind: Int32, key: "minItems", nilable: true, read_only: false, description: nil},
    {name: "min_length", kind: Int32, key: "minLength", nilable: true, read_only: false, description: nil},
    {name: "min_properties", kind: Int32, key: "minProperties", nilable: true, read_only: false, description: nil},
    {name: "minimum", kind: Int32, key: "minimum", nilable: true, read_only: false, description: nil},
    {name: "multiple_of", kind: Int32, key: "multipleOf", nilable: true, read_only: false, description: nil},
    {name: "not", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps, key: "not", nilable: true, read_only: false, description: nil},
    {name: "one_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "oneOf", nilable: true, read_only: false, description: nil},
    {name: "pattern", kind: String, key: "pattern", nilable: true, read_only: false, description: nil},
    {name: "pattern_properties", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "patternProperties", nilable: true, read_only: false, description: nil},
    {name: "properties", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps), key: "properties", nilable: true, read_only: false, description: nil},
    {name: "required", kind: ::Array(String), key: "required", nilable: true, read_only: false, description: nil},
    {name: "title", kind: String, key: "title", nilable: true, read_only: false, description: nil},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: nil},
    {name: "unique_items", kind: ::Bool, key: "uniqueItems", nilable: true, read_only: false, description: nil},

  ]
)
