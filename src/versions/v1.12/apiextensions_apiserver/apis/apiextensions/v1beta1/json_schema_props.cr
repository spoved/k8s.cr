# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps; end

require "./json_schema_props_or_bool"
require "./json_schema_props"
require "./json"
require "./json_schema_props_or_string_array"
require "./external_documentation"
require "./json_schema_props_or_array"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    alias ValueType = String | ::K8S::Object(ValueType) | Bool | ::Array(::K8S::Object(ValueType)) | ::JSON::Any::Type | ::Hash(String, ::K8S::Object(ValueType)) | ::Hash(String, ::K8S::Object(ValueType) | Array(String)) | ::Array(::JSON::Any::Type) | ::Bool | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | ::K8S::Object(ValueType) | Array(::K8S::Object(ValueType)) | Int32 | ::K8S::Object(ValueType) | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    #
    abstract def ref : String?
    # :ditto:
    abstract def ref! : String
    # :ditto:
    abstract def ref? : String?
    # :ditto:
    abstract def ref=(value : String?)
    #
    abstract def schema : String?
    # :ditto:
    abstract def schema! : String
    # :ditto:
    abstract def schema? : String?
    # :ditto:
    abstract def schema=(value : String?)
    #
    abstract def additional_items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
    # :ditto:
    abstract def additional_items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
    # :ditto:
    abstract def additional_items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
    # :ditto:
    abstract def additional_items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    #
    abstract def additional_properties : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
    # :ditto:
    abstract def additional_properties! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
    # :ditto:
    abstract def additional_properties? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
    # :ditto:
    abstract def additional_properties=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    #
    abstract def all_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def all_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def all_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def all_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def any_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def any_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def any_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def any_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def default : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
    # :ditto:
    abstract def default! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
    # :ditto:
    abstract def default? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
    # :ditto:
    abstract def default=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    #
    abstract def definitions : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def definitions! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def definitions? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def definitions=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def dependencies : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?
    # :ditto:
    abstract def dependencies! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)
    # :ditto:
    abstract def dependencies? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?
    # :ditto:
    abstract def dependencies=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?)
    #
    abstract def description : String?
    # :ditto:
    abstract def description! : String
    # :ditto:
    abstract def description? : String?
    # :ditto:
    abstract def description=(value : String?)
    #
    abstract def _enum : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?
    # :ditto:
    abstract def _enum! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)
    # :ditto:
    abstract def _enum? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?
    # :ditto:
    abstract def _enum=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?)
    #
    abstract def example : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
    # :ditto:
    abstract def example! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
    # :ditto:
    abstract def example? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
    # :ditto:
    abstract def example=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    #
    abstract def exclusive_maximum : ::Bool?
    # :ditto:
    abstract def exclusive_maximum! : ::Bool
    # :ditto:
    abstract def exclusive_maximum? : ::Bool?
    # :ditto:
    abstract def exclusive_maximum=(value : ::Bool?)
    #
    abstract def exclusive_minimum : ::Bool?
    # :ditto:
    abstract def exclusive_minimum! : ::Bool
    # :ditto:
    abstract def exclusive_minimum? : ::Bool?
    # :ditto:
    abstract def exclusive_minimum=(value : ::Bool?)
    #
    abstract def external_docs : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?
    # :ditto:
    abstract def external_docs! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation
    # :ditto:
    abstract def external_docs? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?
    # :ditto:
    abstract def external_docs=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?)
    #
    abstract def format : String?
    # :ditto:
    abstract def format! : String
    # :ditto:
    abstract def format? : String?
    # :ditto:
    abstract def format=(value : String?)
    #
    abstract def id : String?
    # :ditto:
    abstract def id! : String
    # :ditto:
    abstract def id? : String?
    # :ditto:
    abstract def id=(value : String?)
    #
    abstract def items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?
    # :ditto:
    abstract def items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray
    # :ditto:
    abstract def items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?
    # :ditto:
    abstract def items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?)
    #
    abstract def max_items : Int32?
    # :ditto:
    abstract def max_items! : Int32
    # :ditto:
    abstract def max_items? : Int32?
    # :ditto:
    abstract def max_items=(value : Int32?)
    #
    abstract def max_length : Int32?
    # :ditto:
    abstract def max_length! : Int32
    # :ditto:
    abstract def max_length? : Int32?
    # :ditto:
    abstract def max_length=(value : Int32?)
    #
    abstract def max_properties : Int32?
    # :ditto:
    abstract def max_properties! : Int32
    # :ditto:
    abstract def max_properties? : Int32?
    # :ditto:
    abstract def max_properties=(value : Int32?)
    #
    abstract def maximum : Int32?
    # :ditto:
    abstract def maximum! : Int32
    # :ditto:
    abstract def maximum? : Int32?
    # :ditto:
    abstract def maximum=(value : Int32?)
    #
    abstract def min_items : Int32?
    # :ditto:
    abstract def min_items! : Int32
    # :ditto:
    abstract def min_items? : Int32?
    # :ditto:
    abstract def min_items=(value : Int32?)
    #
    abstract def min_length : Int32?
    # :ditto:
    abstract def min_length! : Int32
    # :ditto:
    abstract def min_length? : Int32?
    # :ditto:
    abstract def min_length=(value : Int32?)
    #
    abstract def min_properties : Int32?
    # :ditto:
    abstract def min_properties! : Int32
    # :ditto:
    abstract def min_properties? : Int32?
    # :ditto:
    abstract def min_properties=(value : Int32?)
    #
    abstract def minimum : Int32?
    # :ditto:
    abstract def minimum! : Int32
    # :ditto:
    abstract def minimum? : Int32?
    # :ditto:
    abstract def minimum=(value : Int32?)
    #
    abstract def multiple_of : Int32?
    # :ditto:
    abstract def multiple_of! : Int32
    # :ditto:
    abstract def multiple_of? : Int32?
    # :ditto:
    abstract def multiple_of=(value : Int32?)
    #
    abstract def not : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
    # :ditto:
    abstract def not! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    # :ditto:
    abstract def not? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
    # :ditto:
    abstract def not=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
    #
    abstract def one_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def one_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def one_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def one_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def pattern : String?
    # :ditto:
    abstract def pattern! : String
    # :ditto:
    abstract def pattern? : String?
    # :ditto:
    abstract def pattern=(value : String?)
    #
    abstract def pattern_properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def pattern_properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def pattern_properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def pattern_properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
    # :ditto:
    abstract def properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
    # :ditto:
    abstract def properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    #
    abstract def required : ::Array(String)?
    # :ditto:
    abstract def required! : ::Array(String)
    # :ditto:
    abstract def required? : ::Array(String)?
    # :ditto:
    abstract def required=(value : ::Array(String)?)
    #
    abstract def title : String?
    # :ditto:
    abstract def title! : String
    # :ditto:
    abstract def title? : String?
    # :ditto:
    abstract def title=(value : String?)
    #
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
    #
    abstract def unique_items : ::Bool?
    # :ditto:
    abstract def unique_items! : ::Bool
    # :ditto:
    abstract def unique_items? : ::Bool?
    # :ditto:
    abstract def unique_items=(value : ::Bool?)
  end

  # JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
  @[::K8S::Properties(
    ref: {key: "$ref", accessor: "ref", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    schema: {key: "$schema", accessor: "schema", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    additional_items: {key: "additionalItems", accessor: "additional_items", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    additional_properties: {key: "additionalProperties", accessor: "additional_properties", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    all_of: {key: "allOf", accessor: "all_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    any_of: {key: "anyOf", accessor: "any_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default: {key: "default", accessor: "default", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    definitions: {key: "definitions", accessor: "definitions", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dependencies: {key: "dependencies", accessor: "dependencies", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    description: {key: "description", accessor: "description", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    _enum: {key: "enum", accessor: "_enum", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    example: {key: "example", accessor: "example", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    exclusive_maximum: {key: "exclusiveMaximum", accessor: "exclusive_maximum", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    exclusive_minimum: {key: "exclusiveMinimum", accessor: "exclusive_minimum", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_docs: {key: "externalDocs", accessor: "external_docs", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    format: {key: "format", accessor: "format", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    id: {key: "id", accessor: "id", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    items: {key: "items", accessor: "items", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_items: {key: "maxItems", accessor: "max_items", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_length: {key: "maxLength", accessor: "max_length", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_properties: {key: "maxProperties", accessor: "max_properties", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    maximum: {key: "maximum", accessor: "maximum", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_items: {key: "minItems", accessor: "min_items", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_length: {key: "minLength", accessor: "min_length", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_properties: {key: "minProperties", accessor: "min_properties", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    minimum: {key: "minimum", accessor: "minimum", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    multiple_of: {key: "multipleOf", accessor: "multiple_of", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    not: {key: "not", accessor: "not", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    one_of: {key: "oneOf", accessor: "one_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pattern: {key: "pattern", accessor: "pattern", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pattern_properties: {key: "patternProperties", accessor: "pattern_properties", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    properties: {key: "properties", accessor: "properties", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    required: {key: "required", accessor: "required", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    title: {key: "title", accessor: "title", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    unique_items: {key: "uniqueItems", accessor: "unique_items", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    include ::K8S::Kubernetes::Object

    #
    def ref : String?
      self.["$ref"].as(String?)
    end

    # :ditto:
    def ref! : String
      self.["$ref"].as(String?).not_nil!
    end

    # :ditto:
    def ref? : String?
      self.["$ref"]?.as(String?)
    end

    # :ditto:
    def ref=(value : String?)
      self.["$ref"] = value
    end

    #
    def schema : String?
      self.["$schema"].as(String?)
    end

    # :ditto:
    def schema! : String
      self.["$schema"].as(String?).not_nil!
    end

    # :ditto:
    def schema? : String?
      self.["$schema"]?.as(String?)
    end

    # :ditto:
    def schema=(value : String?)
      self.["$schema"] = value
    end

    #
    def additional_items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
      self.["additionalItems"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    end

    # :ditto:
    def additional_items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
      self.["additionalItems"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?).not_nil!
    end

    # :ditto:
    def additional_items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
      self.["additionalItems"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    end

    # :ditto:
    def additional_items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
      self.["additionalItems"] = value
    end

    #
    def additional_properties : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
      self.["additionalProperties"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    end

    # :ditto:
    def additional_properties! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool
      self.["additionalProperties"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?).not_nil!
    end

    # :ditto:
    def additional_properties? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?
      self.["additionalProperties"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
    end

    # :ditto:
    def additional_properties=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool?)
      self.["additionalProperties"] = value
    end

    #
    def all_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["allOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def all_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["allOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def all_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["allOf"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def all_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["allOf"] = value
    end

    #
    def any_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["anyOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def any_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["anyOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def any_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["anyOf"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def any_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["anyOf"] = value
    end

    #
    def default : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
      self.["default"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    end

    # :ditto:
    def default! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
      self.["default"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?).not_nil!
    end

    # :ditto:
    def default? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
      self.["default"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    end

    # :ditto:
    def default=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
      self.["default"] = value
    end

    #
    def definitions : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["definitions"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def definitions! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["definitions"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def definitions? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["definitions"]?.as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def definitions=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["definitions"] = value
    end

    #
    def dependencies : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?
      self.["dependencies"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?)
    end

    # :ditto:
    def dependencies! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)
      self.["dependencies"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?).not_nil!
    end

    # :ditto:
    def dependencies? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?
      self.["dependencies"]?.as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?)
    end

    # :ditto:
    def dependencies=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray)?)
      self.["dependencies"] = value
    end

    #
    def description : String?
      self.["description"].as(String?)
    end

    # :ditto:
    def description! : String
      self.["description"].as(String?).not_nil!
    end

    # :ditto:
    def description? : String?
      self.["description"]?.as(String?)
    end

    # :ditto:
    def description=(value : String?)
      self.["description"] = value
    end

    #
    def _enum : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?
      self.["enum"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?)
    end

    # :ditto:
    def _enum! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)
      self.["enum"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?).not_nil!
    end

    # :ditto:
    def _enum? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?
      self.["enum"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?)
    end

    # :ditto:
    def _enum=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON)?)
      self.["enum"] = value
    end

    #
    def example : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
      self.["example"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    end

    # :ditto:
    def example! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
      self.["example"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?).not_nil!
    end

    # :ditto:
    def example? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?
      self.["example"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
    end

    # :ditto:
    def example=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON?)
      self.["example"] = value
    end

    #
    def exclusive_maximum : ::Bool?
      self.["exclusiveMaximum"].as(::Bool?)
    end

    # :ditto:
    def exclusive_maximum! : ::Bool
      self.["exclusiveMaximum"].as(::Bool?).not_nil!
    end

    # :ditto:
    def exclusive_maximum? : ::Bool?
      self.["exclusiveMaximum"]?.as(::Bool?)
    end

    # :ditto:
    def exclusive_maximum=(value : ::Bool?)
      self.["exclusiveMaximum"] = value
    end

    #
    def exclusive_minimum : ::Bool?
      self.["exclusiveMinimum"].as(::Bool?)
    end

    # :ditto:
    def exclusive_minimum! : ::Bool
      self.["exclusiveMinimum"].as(::Bool?).not_nil!
    end

    # :ditto:
    def exclusive_minimum? : ::Bool?
      self.["exclusiveMinimum"]?.as(::Bool?)
    end

    # :ditto:
    def exclusive_minimum=(value : ::Bool?)
      self.["exclusiveMinimum"] = value
    end

    #
    def external_docs : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?
      self.["externalDocs"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?)
    end

    # :ditto:
    def external_docs! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation
      self.["externalDocs"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?).not_nil!
    end

    # :ditto:
    def external_docs? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?
      self.["externalDocs"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?)
    end

    # :ditto:
    def external_docs=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation?)
      self.["externalDocs"] = value
    end

    #
    def format : String?
      self.["format"].as(String?)
    end

    # :ditto:
    def format! : String
      self.["format"].as(String?).not_nil!
    end

    # :ditto:
    def format? : String?
      self.["format"]?.as(String?)
    end

    # :ditto:
    def format=(value : String?)
      self.["format"] = value
    end

    #
    def id : String?
      self.["id"].as(String?)
    end

    # :ditto:
    def id! : String
      self.["id"].as(String?).not_nil!
    end

    # :ditto:
    def id? : String?
      self.["id"]?.as(String?)
    end

    # :ditto:
    def id=(value : String?)
      self.["id"] = value
    end

    #
    def items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?
      self.["items"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?)
    end

    # :ditto:
    def items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray
      self.["items"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?).not_nil!
    end

    # :ditto:
    def items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?
      self.["items"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?)
    end

    # :ditto:
    def items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray?)
      self.["items"] = value
    end

    #
    def max_items : Int32?
      self.["maxItems"].as(Int32?)
    end

    # :ditto:
    def max_items! : Int32
      self.["maxItems"].as(Int32?).not_nil!
    end

    # :ditto:
    def max_items? : Int32?
      self.["maxItems"]?.as(Int32?)
    end

    # :ditto:
    def max_items=(value : Int32?)
      self.["maxItems"] = value
    end

    #
    def max_length : Int32?
      self.["maxLength"].as(Int32?)
    end

    # :ditto:
    def max_length! : Int32
      self.["maxLength"].as(Int32?).not_nil!
    end

    # :ditto:
    def max_length? : Int32?
      self.["maxLength"]?.as(Int32?)
    end

    # :ditto:
    def max_length=(value : Int32?)
      self.["maxLength"] = value
    end

    #
    def max_properties : Int32?
      self.["maxProperties"].as(Int32?)
    end

    # :ditto:
    def max_properties! : Int32
      self.["maxProperties"].as(Int32?).not_nil!
    end

    # :ditto:
    def max_properties? : Int32?
      self.["maxProperties"]?.as(Int32?)
    end

    # :ditto:
    def max_properties=(value : Int32?)
      self.["maxProperties"] = value
    end

    #
    def maximum : Int32?
      self.["maximum"].as(Int32?)
    end

    # :ditto:
    def maximum! : Int32
      self.["maximum"].as(Int32?).not_nil!
    end

    # :ditto:
    def maximum? : Int32?
      self.["maximum"]?.as(Int32?)
    end

    # :ditto:
    def maximum=(value : Int32?)
      self.["maximum"] = value
    end

    #
    def min_items : Int32?
      self.["minItems"].as(Int32?)
    end

    # :ditto:
    def min_items! : Int32
      self.["minItems"].as(Int32?).not_nil!
    end

    # :ditto:
    def min_items? : Int32?
      self.["minItems"]?.as(Int32?)
    end

    # :ditto:
    def min_items=(value : Int32?)
      self.["minItems"] = value
    end

    #
    def min_length : Int32?
      self.["minLength"].as(Int32?)
    end

    # :ditto:
    def min_length! : Int32
      self.["minLength"].as(Int32?).not_nil!
    end

    # :ditto:
    def min_length? : Int32?
      self.["minLength"]?.as(Int32?)
    end

    # :ditto:
    def min_length=(value : Int32?)
      self.["minLength"] = value
    end

    #
    def min_properties : Int32?
      self.["minProperties"].as(Int32?)
    end

    # :ditto:
    def min_properties! : Int32
      self.["minProperties"].as(Int32?).not_nil!
    end

    # :ditto:
    def min_properties? : Int32?
      self.["minProperties"]?.as(Int32?)
    end

    # :ditto:
    def min_properties=(value : Int32?)
      self.["minProperties"] = value
    end

    #
    def minimum : Int32?
      self.["minimum"].as(Int32?)
    end

    # :ditto:
    def minimum! : Int32
      self.["minimum"].as(Int32?).not_nil!
    end

    # :ditto:
    def minimum? : Int32?
      self.["minimum"]?.as(Int32?)
    end

    # :ditto:
    def minimum=(value : Int32?)
      self.["minimum"] = value
    end

    #
    def multiple_of : Int32?
      self.["multipleOf"].as(Int32?)
    end

    # :ditto:
    def multiple_of! : Int32
      self.["multipleOf"].as(Int32?).not_nil!
    end

    # :ditto:
    def multiple_of? : Int32?
      self.["multipleOf"]?.as(Int32?)
    end

    # :ditto:
    def multiple_of=(value : Int32?)
      self.["multipleOf"] = value
    end

    #
    def not : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
      self.["not"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
    end

    # :ditto:
    def not! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
      self.["not"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?).not_nil!
    end

    # :ditto:
    def not? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
      self.["not"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
    end

    # :ditto:
    def not=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
      self.["not"] = value
    end

    #
    def one_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["oneOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def one_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["oneOf"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def one_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["oneOf"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def one_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["oneOf"] = value
    end

    #
    def pattern : String?
      self.["pattern"].as(String?)
    end

    # :ditto:
    def pattern! : String
      self.["pattern"].as(String?).not_nil!
    end

    # :ditto:
    def pattern? : String?
      self.["pattern"]?.as(String?)
    end

    # :ditto:
    def pattern=(value : String?)
      self.["pattern"] = value
    end

    #
    def pattern_properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["patternProperties"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def pattern_properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["patternProperties"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def pattern_properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["patternProperties"]?.as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def pattern_properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["patternProperties"] = value
    end

    #
    def properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["properties"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
      self.["properties"].as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?).not_nil!
    end

    # :ditto:
    def properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?
      self.["properties"]?.as(::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
    end

    # :ditto:
    def properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)?)
      self.["properties"] = value
    end

    #
    def required : ::Array(String)?
      self.["required"].as(::Array(String)?)
    end

    # :ditto:
    def required! : ::Array(String)
      self.["required"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def required? : ::Array(String)?
      self.["required"]?.as(::Array(String)?)
    end

    # :ditto:
    def required=(value : ::Array(String)?)
      self.["required"] = value
    end

    #
    def title : String?
      self.["title"].as(String?)
    end

    # :ditto:
    def title! : String
      self.["title"].as(String?).not_nil!
    end

    # :ditto:
    def title? : String?
      self.["title"]?.as(String?)
    end

    # :ditto:
    def title=(value : String?)
      self.["title"] = value
    end

    #
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    #
    def unique_items : ::Bool?
      self.["uniqueItems"].as(::Bool?)
    end

    # :ditto:
    def unique_items! : ::Bool
      self.["uniqueItems"].as(::Bool?).not_nil!
    end

    # :ditto:
    def unique_items? : ::Bool?
      self.["uniqueItems"]?.as(::Bool?)
    end

    # :ditto:
    def unique_items=(value : ::Bool?)
      self.["uniqueItems"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "$ref", accessor: "ref", nilable: true, read_only: false, default: nil, kind: String },
        { key: "$schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: String },
        { key: "additionalItems", accessor: "additional_items", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool },
        { key: "additionalProperties", accessor: "additional_properties", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool },
        { key: "allOf", accessor: "all_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "anyOf", accessor: "any_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "default", accessor: "default", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON },
        { key: "definitions", accessor: "definitions", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "dependencies", accessor: "dependencies", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray) },
        { key: "description", accessor: "description", nilable: true, read_only: false, default: nil, kind: String },
        { key: "enum", accessor: "_enum", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON) },
        { key: "example", accessor: "example", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON },
        { key: "exclusiveMaximum", accessor: "exclusive_maximum", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "exclusiveMinimum", accessor: "exclusive_minimum", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "externalDocs", accessor: "external_docs", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation },
        { key: "format", accessor: "format", nilable: true, read_only: false, default: nil, kind: String },
        { key: "id", accessor: "id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray },
        { key: "maxItems", accessor: "max_items", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "maxLength", accessor: "max_length", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "maxProperties", accessor: "max_properties", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "maximum", accessor: "maximum", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "minItems", accessor: "min_items", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "minLength", accessor: "min_length", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "minProperties", accessor: "min_properties", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "minimum", accessor: "minimum", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "multipleOf", accessor: "multiple_of", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "not", accessor: "not", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps },
        { key: "oneOf", accessor: "one_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "pattern", accessor: "pattern", nilable: true, read_only: false, default: nil, kind: String },
        { key: "patternProperties", accessor: "pattern_properties", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "properties", accessor: "properties", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) },
        { key: "required", accessor: "required", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "title", accessor: "title", nilable: true, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "uniqueItems", accessor: "unique_items", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
