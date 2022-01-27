# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps; end

require "./json_schema_props_or_bool"
require "./json_schema_props"
require "./json"
require "./json_schema_props_or_string_array"
require "./external_documentation"
require "./json_schema_props_or_array"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps
    #
    abstract def ref : String?
    # :ditto:
    abstract def ref! : String
    # :ditto:
    abstract def ref? : String?
    # :ditto:
    abstract def ref=(value : String)
    #
    abstract def schema : String?
    # :ditto:
    abstract def schema! : String
    # :ditto:
    abstract def schema? : String?
    # :ditto:
    abstract def schema=(value : String)
    #
    abstract def additional_items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool?
    # :ditto:
    abstract def additional_items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool
    # :ditto:
    abstract def additional_items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool?
    # :ditto:
    abstract def additional_items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool)
    #
    abstract def additional_properties : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool?
    # :ditto:
    abstract def additional_properties! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool
    # :ditto:
    abstract def additional_properties? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool?
    # :ditto:
    abstract def additional_properties=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool)
    #
    abstract def all_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def all_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def all_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def all_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    #
    abstract def any_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def any_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def any_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def any_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    # default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.
    abstract def default : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json?
    # :ditto:
    abstract def default! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json
    # :ditto:
    abstract def default? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json?
    # :ditto:
    abstract def default=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)
    #
    abstract def definitions : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def definitions! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def definitions? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def definitions=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    #
    abstract def dependencies : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)?
    # :ditto:
    abstract def dependencies! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)
    # :ditto:
    abstract def dependencies? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)?
    # :ditto:
    abstract def dependencies=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray))
    #
    abstract def description : String?
    # :ditto:
    abstract def description! : String
    # :ditto:
    abstract def description? : String?
    # :ditto:
    abstract def description=(value : String)
    #
    abstract def _enum : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)?
    # :ditto:
    abstract def _enum! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)
    # :ditto:
    abstract def _enum? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)?
    # :ditto:
    abstract def _enum=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json))
    #
    abstract def example : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json?
    # :ditto:
    abstract def example! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json
    # :ditto:
    abstract def example? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json?
    # :ditto:
    abstract def example=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)
    #
    abstract def exclusive_maximum : ::Bool?
    # :ditto:
    abstract def exclusive_maximum! : ::Bool
    # :ditto:
    abstract def exclusive_maximum? : ::Bool?
    # :ditto:
    abstract def exclusive_maximum=(value : ::Bool)
    #
    abstract def exclusive_minimum : ::Bool?
    # :ditto:
    abstract def exclusive_minimum! : ::Bool
    # :ditto:
    abstract def exclusive_minimum? : ::Bool?
    # :ditto:
    abstract def exclusive_minimum=(value : ::Bool)
    #
    abstract def external_docs : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation?
    # :ditto:
    abstract def external_docs! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation
    # :ditto:
    abstract def external_docs? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation?
    # :ditto:
    abstract def external_docs=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation)
    #
    abstract def format : String?
    # :ditto:
    abstract def format! : String
    # :ditto:
    abstract def format? : String?
    # :ditto:
    abstract def format=(value : String)
    #
    abstract def id : String?
    # :ditto:
    abstract def id! : String
    # :ditto:
    abstract def id? : String?
    # :ditto:
    abstract def id=(value : String)
    #
    abstract def items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray?
    # :ditto:
    abstract def items! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray
    # :ditto:
    abstract def items? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray?
    # :ditto:
    abstract def items=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray)
    #
    abstract def max_items : Int32?
    # :ditto:
    abstract def max_items! : Int32
    # :ditto:
    abstract def max_items? : Int32?
    # :ditto:
    abstract def max_items=(value : Int32)
    #
    abstract def max_length : Int32?
    # :ditto:
    abstract def max_length! : Int32
    # :ditto:
    abstract def max_length? : Int32?
    # :ditto:
    abstract def max_length=(value : Int32)
    #
    abstract def max_properties : Int32?
    # :ditto:
    abstract def max_properties! : Int32
    # :ditto:
    abstract def max_properties? : Int32?
    # :ditto:
    abstract def max_properties=(value : Int32)
    #
    abstract def maximum : Int32?
    # :ditto:
    abstract def maximum! : Int32
    # :ditto:
    abstract def maximum? : Int32?
    # :ditto:
    abstract def maximum=(value : Int32)
    #
    abstract def min_items : Int32?
    # :ditto:
    abstract def min_items! : Int32
    # :ditto:
    abstract def min_items? : Int32?
    # :ditto:
    abstract def min_items=(value : Int32)
    #
    abstract def min_length : Int32?
    # :ditto:
    abstract def min_length! : Int32
    # :ditto:
    abstract def min_length? : Int32?
    # :ditto:
    abstract def min_length=(value : Int32)
    #
    abstract def min_properties : Int32?
    # :ditto:
    abstract def min_properties! : Int32
    # :ditto:
    abstract def min_properties? : Int32?
    # :ditto:
    abstract def min_properties=(value : Int32)
    #
    abstract def minimum : Int32?
    # :ditto:
    abstract def minimum! : Int32
    # :ditto:
    abstract def minimum? : Int32?
    # :ditto:
    abstract def minimum=(value : Int32)
    #
    abstract def multiple_of : Int32?
    # :ditto:
    abstract def multiple_of! : Int32
    # :ditto:
    abstract def multiple_of? : Int32?
    # :ditto:
    abstract def multiple_of=(value : Int32)
    #
    abstract def not : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps?
    # :ditto:
    abstract def not! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps
    # :ditto:
    abstract def not? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps?
    # :ditto:
    abstract def not=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    #
    abstract def nullable : ::Bool?
    # :ditto:
    abstract def nullable! : ::Bool
    # :ditto:
    abstract def nullable? : ::Bool?
    # :ditto:
    abstract def nullable=(value : ::Bool)
    #
    abstract def one_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def one_of! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def one_of? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def one_of=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    #
    abstract def pattern : String?
    # :ditto:
    abstract def pattern! : String
    # :ditto:
    abstract def pattern? : String?
    # :ditto:
    abstract def pattern=(value : String)
    #
    abstract def pattern_properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def pattern_properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def pattern_properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def pattern_properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    #
    abstract def properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def properties! : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
    # :ditto:
    abstract def properties? : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)?
    # :ditto:
    abstract def properties=(value : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps))
    #
    abstract def required : ::Array(String)?
    # :ditto:
    abstract def required! : ::Array(String)
    # :ditto:
    abstract def required? : ::Array(String)?
    # :ditto:
    abstract def required=(value : ::Array(String))
    #
    abstract def title : String?
    # :ditto:
    abstract def title! : String
    # :ditto:
    abstract def title? : String?
    # :ditto:
    abstract def title=(value : String)
    #
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
    #
    abstract def unique_items : ::Bool?
    # :ditto:
    abstract def unique_items! : ::Bool
    # :ditto:
    abstract def unique_items? : ::Bool?
    # :ditto:
    abstract def unique_items=(value : ::Bool)
    # x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
    abstract def x_kubernetes_embedded_resource : ::Bool?
    # :ditto:
    abstract def x_kubernetes_embedded_resource! : ::Bool
    # :ditto:
    abstract def x_kubernetes_embedded_resource? : ::Bool?
    # :ditto:
    abstract def x_kubernetes_embedded_resource=(value : ::Bool)
    # x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
    #
    # 1) anyOf:
    #    - type: integer
    #    - type: string
    # 2) allOf:
    #    - anyOf:
    #      - type: integer
    #      - type: string
    #    - ... zero or more
    abstract def x_kubernetes_int_or_string : ::Bool?
    # :ditto:
    abstract def x_kubernetes_int_or_string! : ::Bool
    # :ditto:
    abstract def x_kubernetes_int_or_string? : ::Bool?
    # :ditto:
    abstract def x_kubernetes_int_or_string=(value : ::Bool)
    # x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
    #
    # This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set to "map". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).
    abstract def x_kubernetes_list_map_keys : ::Array(String)?
    # :ditto:
    abstract def x_kubernetes_list_map_keys! : ::Array(String)
    # :ditto:
    abstract def x_kubernetes_list_map_keys? : ::Array(String)?
    # :ditto:
    abstract def x_kubernetes_list_map_keys=(value : ::Array(String))
    # x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
    #
    # 1) `atomic`: the list is treated as a single entity, like a scalar.
    #      Atomic lists will be entirely replaced when updated. This extension
    #      may be used on any type of list (struct, scalar, ...).
    # 2) `set`:
    #      Sets are lists that must not have multiple items with the same value. Each
    #      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
    #      array with x-kubernetes-list-type `atomic`.
    # 3) `map`:
    #      These lists are like maps in that their elements have a non-index key
    #      used to identify them. Order is preserved upon merge. The map tag
    #      must only be used on a list with elements of type object.
    # Defaults to atomic for arrays.
    abstract def x_kubernetes_list_type : String?
    # :ditto:
    abstract def x_kubernetes_list_type! : String
    # :ditto:
    abstract def x_kubernetes_list_type? : String?
    # :ditto:
    abstract def x_kubernetes_list_type=(value : String)
    # x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
    abstract def x_kubernetes_preserve_unknown_fields : ::Bool?
    # :ditto:
    abstract def x_kubernetes_preserve_unknown_fields! : ::Bool
    # :ditto:
    abstract def x_kubernetes_preserve_unknown_fields? : ::Bool?
    # :ditto:
    abstract def x_kubernetes_preserve_unknown_fields=(value : ::Bool)
  end

  # JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
  @[::K8S::Properties(
    ref: {key: "$ref", accessor: "ref", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    schema: {key: "$schema", accessor: "schema", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    additional_items: {key: "additionalItems", accessor: "additional_items", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    additional_properties: {key: "additionalProperties", accessor: "additional_properties", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    all_of: {key: "allOf", accessor: "all_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    any_of: {key: "anyOf", accessor: "any_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default: {key: "default", accessor: "default", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json", nilable: true, default: nil, read_only: false, description: "default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    definitions: {key: "definitions", accessor: "definitions", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dependencies: {key: "dependencies", accessor: "dependencies", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    description: {key: "description", accessor: "description", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    _enum: {key: "enum", accessor: "_enum", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    example: {key: "example", accessor: "example", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    exclusive_maximum: {key: "exclusiveMaximum", accessor: "exclusive_maximum", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    exclusive_minimum: {key: "exclusiveMinimum", accessor: "exclusive_minimum", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_docs: {key: "externalDocs", accessor: "external_docs", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    format: {key: "format", accessor: "format", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    id: {key: "id", accessor: "id", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    items: {key: "items", accessor: "items", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_items: {key: "maxItems", accessor: "max_items", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_length: {key: "maxLength", accessor: "max_length", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_properties: {key: "maxProperties", accessor: "max_properties", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    maximum: {key: "maximum", accessor: "maximum", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_items: {key: "minItems", accessor: "min_items", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_length: {key: "minLength", accessor: "min_length", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_properties: {key: "minProperties", accessor: "min_properties", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    minimum: {key: "minimum", accessor: "minimum", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    multiple_of: {key: "multipleOf", accessor: "multiple_of", kind: "Int32", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    not: {key: "not", accessor: "not", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    nullable: {key: "nullable", accessor: "nullable", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    one_of: {key: "oneOf", accessor: "one_of", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pattern: {key: "pattern", accessor: "pattern", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pattern_properties: {key: "patternProperties", accessor: "pattern_properties", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    properties: {key: "properties", accessor: "properties", kind: "::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    required: {key: "required", accessor: "required", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    title: {key: "title", accessor: "title", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    unique_items: {key: "uniqueItems", accessor: "unique_items", kind: "::Bool", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    x_kubernetes_embedded_resource: {key: "x-kubernetes-embedded-resource", accessor: "x_kubernetes_embedded_resource", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    x_kubernetes_int_or_string: {key: "x-kubernetes-int-or-string", accessor: "x_kubernetes_int_or_string", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:\n\n1) anyOf:\n   - type: integer\n   - type: string\n2) allOf:\n   - anyOf:\n     - type: integer\n     - type: string\n   - ... zero or more", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    x_kubernetes_list_map_keys: {key: "x-kubernetes-list-map-keys", accessor: "x_kubernetes_list_map_keys", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.\n\nThis tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    x_kubernetes_list_type: {key: "x-kubernetes-list-type", accessor: "x_kubernetes_list_type", kind: "String", nilable: true, default: nil, read_only: false, description: "x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:\n\n1) `atomic`: the list is treated as a single entity, like a scalar.\n     Atomic lists will be entirely replaced when updated. This extension\n     may be used on any type of list (struct, scalar, ...).\n2) `set`:\n     Sets are lists that must not have multiple items with the same value. Each\n     value must be a scalar, an object with x-kubernetes-map-type `atomic` or an\n     array with x-kubernetes-list-type `atomic`.\n3) `map`:\n     These lists are like maps in that their elements have a non-index key\n     used to identify them. Order is preserved upon merge. The map tag\n     must only be used on a list with elements of type object.\nDefaults to atomic for arrays.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    x_kubernetes_preserve_unknown_fields: {key: "x-kubernetes-preserve-unknown-fields", accessor: "x_kubernetes_preserve_unknown_fields", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps
    k8s_object_accessor("$ref", ref : String, true, false, nil)
    k8s_object_accessor("$schema", schema : String, true, false, nil)
    k8s_object_accessor("additionalItems", additional_items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool, true, false, nil)
    k8s_object_accessor("additionalProperties", additional_properties : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool, true, false, nil)
    k8s_object_accessor("allOf", all_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("anyOf", any_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("default", default : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json, true, false, "default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.")
    k8s_object_accessor("definitions", definitions : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("dependencies", dependencies : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray), true, false, nil)
    k8s_object_accessor("description", description : String, true, false, nil)
    k8s_object_accessor("enum", _enum : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json), true, false, nil)
    k8s_object_accessor("example", example : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json, true, false, nil)
    k8s_object_accessor("exclusiveMaximum", exclusive_maximum : ::Bool, true, false, nil)
    k8s_object_accessor("exclusiveMinimum", exclusive_minimum : ::Bool, true, false, nil)
    k8s_object_accessor("externalDocs", external_docs : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation, true, false, nil)
    k8s_object_accessor("format", format : String, true, false, nil)
    k8s_object_accessor("id", id : String, true, false, nil)
    k8s_object_accessor("items", items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray, true, false, nil)
    k8s_object_accessor("maxItems", max_items : Int32, true, false, nil)
    k8s_object_accessor("maxLength", max_length : Int32, true, false, nil)
    k8s_object_accessor("maxProperties", max_properties : Int32, true, false, nil)
    k8s_object_accessor("maximum", maximum : Int32, true, false, nil)
    k8s_object_accessor("minItems", min_items : Int32, true, false, nil)
    k8s_object_accessor("minLength", min_length : Int32, true, false, nil)
    k8s_object_accessor("minProperties", min_properties : Int32, true, false, nil)
    k8s_object_accessor("minimum", minimum : Int32, true, false, nil)
    k8s_object_accessor("multipleOf", multiple_of : Int32, true, false, nil)
    k8s_object_accessor("not", not : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps, true, false, nil)
    k8s_object_accessor("nullable", nullable : ::Bool, true, false, nil)
    k8s_object_accessor("oneOf", one_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("pattern", pattern : String, true, false, nil)
    k8s_object_accessor("patternProperties", pattern_properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("properties", properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), true, false, nil)
    k8s_object_accessor("required", required : ::Array(String), true, false, nil)
    k8s_object_accessor("title", title : String, true, false, nil)
    k8s_object_accessor("type", type : String, true, false, nil)
    k8s_object_accessor("uniqueItems", unique_items : ::Bool, true, false, nil)
    k8s_object_accessor("x-kubernetes-embedded-resource", x_kubernetes_embedded_resource : ::Bool, true, false, "x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).")
    k8s_object_accessor("x-kubernetes-int-or-string", x_kubernetes_int_or_string : ::Bool, true, false, "x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:\n\n1) anyOf:\n   - type: integer\n   - type: string\n2) allOf:\n   - anyOf:\n     - type: integer\n     - type: string\n   - ... zero or more")
    k8s_object_accessor("x-kubernetes-list-map-keys", x_kubernetes_list_map_keys : ::Array(String), true, false, "x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.\n\nThis tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).")
    k8s_object_accessor("x-kubernetes-list-type", x_kubernetes_list_type : String, true, false, "x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:\n\n1) `atomic`: the list is treated as a single entity, like a scalar.\n     Atomic lists will be entirely replaced when updated. This extension\n     may be used on any type of list (struct, scalar, ...).\n2) `set`:\n     Sets are lists that must not have multiple items with the same value. Each\n     value must be a scalar, an object with x-kubernetes-map-type `atomic` or an\n     array with x-kubernetes-list-type `atomic`.\n3) `map`:\n     These lists are like maps in that their elements have a non-index key\n     used to identify them. Order is preserved upon merge. The map tag\n     must only be used on a list with elements of type object.\nDefaults to atomic for arrays.")
    k8s_object_accessor("x-kubernetes-preserve-unknown-fields", x_kubernetes_preserve_unknown_fields : ::Bool, true, false, "x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.")

    def initialize(*, ref : String? = nil, schema : String? = nil, additional_items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool? = nil, additional_properties : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool? = nil, all_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, any_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, default : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json? = nil, definitions : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, dependencies : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)? = nil, description : String? = nil, _enum : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)? = nil, example : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json? = nil, exclusive_maximum : ::Bool? = nil, exclusive_minimum : ::Bool? = nil, external_docs : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation? = nil, format : String? = nil, id : String? = nil, items : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray? = nil, max_items : Int32? = nil, max_length : Int32? = nil, max_properties : Int32? = nil, maximum : Int32? = nil, min_items : Int32? = nil, min_length : Int32? = nil, min_properties : Int32? = nil, minimum : Int32? = nil, multiple_of : Int32? = nil, not : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps? = nil, nullable : ::Bool? = nil, one_of : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, pattern : String? = nil, pattern_properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, properties : ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)? = nil, required : ::Array(String)? = nil, title : String? = nil, type : String? = nil, unique_items : ::Bool? = nil, x_kubernetes_embedded_resource : ::Bool? = nil, x_kubernetes_int_or_string : ::Bool? = nil, x_kubernetes_list_map_keys : ::Array(String)? = nil, x_kubernetes_list_type : String? = nil, x_kubernetes_preserve_unknown_fields : ::Bool? = nil)
      super()
      self.["$ref"] = ref
      self.["$schema"] = schema
      self.["additionalItems"] = additional_items
      self.["additionalProperties"] = additional_properties
      self.["allOf"] = all_of
      self.["anyOf"] = any_of
      self.["default"] = default
      self.["definitions"] = definitions
      self.["dependencies"] = dependencies
      self.["description"] = description
      self.["enum"] = _enum
      self.["example"] = example
      self.["exclusiveMaximum"] = exclusive_maximum
      self.["exclusiveMinimum"] = exclusive_minimum
      self.["externalDocs"] = external_docs
      self.["format"] = format
      self.["id"] = id
      self.["items"] = items
      self.["maxItems"] = max_items
      self.["maxLength"] = max_length
      self.["maxProperties"] = max_properties
      self.["maximum"] = maximum
      self.["minItems"] = min_items
      self.["minLength"] = min_length
      self.["minProperties"] = min_properties
      self.["minimum"] = minimum
      self.["multipleOf"] = multiple_of
      self.["not"] = not
      self.["nullable"] = nullable
      self.["oneOf"] = one_of
      self.["pattern"] = pattern
      self.["patternProperties"] = pattern_properties
      self.["properties"] = properties
      self.["required"] = required
      self.["title"] = title
      self.["type"] = type
      self.["uniqueItems"] = unique_items
      self.["x-kubernetes-embedded-resource"] = x_kubernetes_embedded_resource
      self.["x-kubernetes-int-or-string"] = x_kubernetes_int_or_string
      self.["x-kubernetes-list-map-keys"] = x_kubernetes_list_map_keys
      self.["x-kubernetes-list-type"] = x_kubernetes_list_type
      self.["x-kubernetes-preserve-unknown-fields"] = x_kubernetes_preserve_unknown_fields
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "$ref", accessor: "ref", nilable: true, read_only: false, default: nil, kind: String},
      {key: "$schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: String},
      {key: "additionalItems", accessor: "additional_items", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool},
      {key: "additionalProperties", accessor: "additional_properties", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool},
      {key: "allOf", accessor: "all_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "anyOf", accessor: "any_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "default", accessor: "default", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json},
      {key: "definitions", accessor: "definitions", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "dependencies", accessor: "dependencies", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray)},
      {key: "description", accessor: "description", nilable: true, read_only: false, default: nil, kind: String},
      {key: "enum", accessor: "_enum", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json)},
      {key: "example", accessor: "example", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json},
      {key: "exclusiveMaximum", accessor: "exclusive_maximum", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "exclusiveMinimum", accessor: "exclusive_minimum", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "externalDocs", accessor: "external_docs", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation},
      {key: "format", accessor: "format", nilable: true, read_only: false, default: nil, kind: String},
      {key: "id", accessor: "id", nilable: true, read_only: false, default: nil, kind: String},
      {key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray},
      {key: "maxItems", accessor: "max_items", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "maxLength", accessor: "max_length", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "maxProperties", accessor: "max_properties", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "maximum", accessor: "maximum", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "minItems", accessor: "min_items", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "minLength", accessor: "min_length", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "minProperties", accessor: "min_properties", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "minimum", accessor: "minimum", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "multipleOf", accessor: "multiple_of", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "not", accessor: "not", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps},
      {key: "nullable", accessor: "nullable", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "oneOf", accessor: "one_of", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "pattern", accessor: "pattern", nilable: true, read_only: false, default: nil, kind: String},
      {key: "patternProperties", accessor: "pattern_properties", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "properties", accessor: "properties", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)},
      {key: "required", accessor: "required", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "title", accessor: "title", nilable: true, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "uniqueItems", accessor: "unique_items", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "x-kubernetes-embedded-resource", accessor: "x_kubernetes_embedded_resource", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "x-kubernetes-int-or-string", accessor: "x_kubernetes_int_or_string", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "x-kubernetes-list-map-keys", accessor: "x_kubernetes_list_map_keys", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "x-kubernetes-list-type", accessor: "x_kubernetes_list_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "x-kubernetes-preserve-unknown-fields", accessor: "x_kubernetes_preserve_unknown_fields", nilable: true, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
