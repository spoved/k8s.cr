# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
  @[::K8S::Properties(
    ref: {type: String, nilable: true, key: "$ref", getter: false, setter: false},
    schema: {type: String, nilable: true, key: "$schema", getter: false, setter: false},
    additional_items: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalItems", getter: false, setter: false},
    additional_properties: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalProperties", getter: false, setter: false},
    all_of: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "allOf", getter: false, setter: false},
    any_of: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "anyOf", getter: false, setter: false},
    default: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "default", getter: false, setter: false},
    definitions: {type: Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "definitions", getter: false, setter: false},
    dependencies: {type: Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray), nilable: true, key: "dependencies", getter: false, setter: false},
    description: {type: String, nilable: true, key: "description", getter: false, setter: false},
    enum: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON), nilable: true, key: "enum", getter: false, setter: false},
    example: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "example", getter: false, setter: false},
    exclusive_maximum: {type: Bool, nilable: true, key: "exclusiveMaximum", getter: false, setter: false},
    exclusive_minimum: {type: Bool, nilable: true, key: "exclusiveMinimum", getter: false, setter: false},
    external_docs: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation, nilable: true, key: "externalDocs", getter: false, setter: false},
    format: {type: String, nilable: true, key: "format", getter: false, setter: false},
    id: {type: String, nilable: true, key: "id", getter: false, setter: false},
    items: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray, nilable: true, key: "items", getter: false, setter: false},
    max_items: {type: Int32, nilable: true, key: "maxItems", getter: false, setter: false},
    max_length: {type: Int32, nilable: true, key: "maxLength", getter: false, setter: false},
    max_properties: {type: Int32, nilable: true, key: "maxProperties", getter: false, setter: false},
    maximum: {type: Int32, nilable: true, key: "maximum", getter: false, setter: false},
    min_items: {type: Int32, nilable: true, key: "minItems", getter: false, setter: false},
    min_length: {type: Int32, nilable: true, key: "minLength", getter: false, setter: false},
    min_properties: {type: Int32, nilable: true, key: "minProperties", getter: false, setter: false},
    minimum: {type: Int32, nilable: true, key: "minimum", getter: false, setter: false},
    multiple_of: {type: Int32, nilable: true, key: "multipleOf", getter: false, setter: false},
    not: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "not", getter: false, setter: false},
    nullable: {type: Bool, nilable: true, key: "nullable", getter: false, setter: false},
    one_of: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "oneOf", getter: false, setter: false},
    pattern: {type: String, nilable: true, key: "pattern", getter: false, setter: false},
    pattern_properties: {type: Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "patternProperties", getter: false, setter: false},
    properties: {type: Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "properties", getter: false, setter: false},
    required: {type: Array(String), nilable: true, key: "required", getter: false, setter: false},
    title: {type: String, nilable: true, key: "title", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
    unique_items: {type: Bool, nilable: true, key: "uniqueItems", getter: false, setter: false},
    x_kubernetes_embedded_resource: {type: Bool, nilable: true, key: "x-kubernetes-embedded-resource", getter: false, setter: false},
    x_kubernetes_int_or_string: {type: Bool, nilable: true, key: "x-kubernetes-int-or-string", getter: false, setter: false},
    x_kubernetes_preserve_unknown_fields: {type: Bool, nilable: true, key: "x-kubernetes-preserve-unknown-fields", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "$ref", emit_null: false)]
    @[::YAML::Field(key: "$ref", emit_null: false)]
    property ref : String | Nil

    @[::JSON::Field(key: "$schema", emit_null: false)]
    @[::YAML::Field(key: "$schema", emit_null: false)]
    property schema : String | Nil

    @[::JSON::Field(key: "additionalItems", emit_null: false)]
    @[::YAML::Field(key: "additionalItems", emit_null: false)]
    property additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "additionalProperties", emit_null: false)]
    @[::YAML::Field(key: "additionalProperties", emit_null: false)]
    property additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "allOf", emit_null: false)]
    @[::YAML::Field(key: "allOf", emit_null: false)]
    property all_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "anyOf", emit_null: false)]
    @[::YAML::Field(key: "anyOf", emit_null: false)]
    property any_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    # default is a default value for undefined object fields. Defaulting is an alpha feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.
    @[::JSON::Field(key: "default", emit_null: false)]
    @[::YAML::Field(key: "default", emit_null: false)]
    property default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

    @[::JSON::Field(key: "definitions", emit_null: false)]
    @[::YAML::Field(key: "definitions", emit_null: false)]
    property definitions : Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "dependencies", emit_null: false)]
    @[::YAML::Field(key: "dependencies", emit_null: false)]
    property dependencies : Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrStringArray) | Nil

    @[::JSON::Field(key: "description", emit_null: false)]
    @[::YAML::Field(key: "description", emit_null: false)]
    property description : String | Nil

    @[::JSON::Field(key: "enum", emit_null: false)]
    @[::YAML::Field(key: "enum", emit_null: false)]
    property enum : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON) | Nil

    @[::JSON::Field(key: "example", emit_null: false)]
    @[::YAML::Field(key: "example", emit_null: false)]
    property example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

    @[::JSON::Field(key: "exclusiveMaximum", emit_null: false)]
    @[::YAML::Field(key: "exclusiveMaximum", emit_null: false)]
    property exclusive_maximum : Bool | Nil

    @[::JSON::Field(key: "exclusiveMinimum", emit_null: false)]
    @[::YAML::Field(key: "exclusiveMinimum", emit_null: false)]
    property exclusive_minimum : Bool | Nil

    @[::JSON::Field(key: "externalDocs", emit_null: false)]
    @[::YAML::Field(key: "externalDocs", emit_null: false)]
    property external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil

    @[::JSON::Field(key: "format", emit_null: false)]
    @[::YAML::Field(key: "format", emit_null: false)]
    property format : String | Nil

    @[::JSON::Field(key: "id", emit_null: false)]
    @[::YAML::Field(key: "id", emit_null: false)]
    property id : String | Nil

    @[::JSON::Field(key: "items", emit_null: false)]
    @[::YAML::Field(key: "items", emit_null: false)]
    property items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil

    @[::JSON::Field(key: "maxItems", emit_null: false)]
    @[::YAML::Field(key: "maxItems", emit_null: false)]
    property max_items : Int32 | Nil

    @[::JSON::Field(key: "maxLength", emit_null: false)]
    @[::YAML::Field(key: "maxLength", emit_null: false)]
    property max_length : Int32 | Nil

    @[::JSON::Field(key: "maxProperties", emit_null: false)]
    @[::YAML::Field(key: "maxProperties", emit_null: false)]
    property max_properties : Int32 | Nil

    @[::JSON::Field(key: "maximum", emit_null: false)]
    @[::YAML::Field(key: "maximum", emit_null: false)]
    property maximum : Int32 | Nil

    @[::JSON::Field(key: "minItems", emit_null: false)]
    @[::YAML::Field(key: "minItems", emit_null: false)]
    property min_items : Int32 | Nil

    @[::JSON::Field(key: "minLength", emit_null: false)]
    @[::YAML::Field(key: "minLength", emit_null: false)]
    property min_length : Int32 | Nil

    @[::JSON::Field(key: "minProperties", emit_null: false)]
    @[::YAML::Field(key: "minProperties", emit_null: false)]
    property min_properties : Int32 | Nil

    @[::JSON::Field(key: "minimum", emit_null: false)]
    @[::YAML::Field(key: "minimum", emit_null: false)]
    property minimum : Int32 | Nil

    @[::JSON::Field(key: "multipleOf", emit_null: false)]
    @[::YAML::Field(key: "multipleOf", emit_null: false)]
    property multiple_of : Int32 | Nil

    @[::JSON::Field(key: "not", emit_null: false)]
    @[::YAML::Field(key: "not", emit_null: false)]
    property not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

    @[::JSON::Field(key: "nullable", emit_null: false)]
    @[::YAML::Field(key: "nullable", emit_null: false)]
    property nullable : Bool | Nil

    @[::JSON::Field(key: "oneOf", emit_null: false)]
    @[::YAML::Field(key: "oneOf", emit_null: false)]
    property one_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "pattern", emit_null: false)]
    @[::YAML::Field(key: "pattern", emit_null: false)]
    property pattern : String | Nil

    @[::JSON::Field(key: "patternProperties", emit_null: false)]
    @[::YAML::Field(key: "patternProperties", emit_null: false)]
    property pattern_properties : Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "properties", emit_null: false)]
    @[::YAML::Field(key: "properties", emit_null: false)]
    property properties : Hash(String, ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "required", emit_null: false)]
    @[::YAML::Field(key: "required", emit_null: false)]
    property required : Array(String) | Nil

    @[::JSON::Field(key: "title", emit_null: false)]
    @[::YAML::Field(key: "title", emit_null: false)]
    property title : String | Nil

    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    @[::JSON::Field(key: "uniqueItems", emit_null: false)]
    @[::YAML::Field(key: "uniqueItems", emit_null: false)]
    property unique_items : Bool | Nil

    # x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
    @[::JSON::Field(key: "x-kubernetes-embedded-resource", emit_null: false)]
    @[::YAML::Field(key: "x-kubernetes-embedded-resource", emit_null: false)]
    property x_kubernetes_embedded_resource : Bool | Nil

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
    @[::JSON::Field(key: "x-kubernetes-int-or-string", emit_null: false)]
    @[::YAML::Field(key: "x-kubernetes-int-or-string", emit_null: false)]
    property x_kubernetes_int_or_string : Bool | Nil

    # x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
    @[::JSON::Field(key: "x-kubernetes-preserve-unknown-fields", emit_null: false)]
    @[::YAML::Field(key: "x-kubernetes-preserve-unknown-fields", emit_null: false)]
    property x_kubernetes_preserve_unknown_fields : Bool | Nil

    def initialize(*, @ref : String | Nil = nil, @schema : String | Nil = nil, @additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @all_of : Array | Nil = nil, @any_of : Array | Nil = nil, @default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @definitions : Hash(String, String) | Nil = nil, @dependencies : Hash(String, String) | Nil = nil, @description : String | Nil = nil, @enum : Array | Nil = nil, @example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @exclusive_maximum : Bool | Nil = nil, @exclusive_minimum : Bool | Nil = nil, @external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil = nil, @format : String | Nil = nil, @id : String | Nil = nil, @items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil = nil, @max_items : Int32 | Nil = nil, @max_length : Int32 | Nil = nil, @max_properties : Int32 | Nil = nil, @maximum : Int32 | Nil = nil, @min_items : Int32 | Nil = nil, @min_length : Int32 | Nil = nil, @min_properties : Int32 | Nil = nil, @minimum : Int32 | Nil = nil, @multiple_of : Int32 | Nil = nil, @not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil, @nullable : Bool | Nil = nil, @one_of : Array | Nil = nil, @pattern : String | Nil = nil, @pattern_properties : Hash(String, String) | Nil = nil, @properties : Hash(String, String) | Nil = nil, @required : Array | Nil = nil, @title : String | Nil = nil, @type : String | Nil = nil, @unique_items : Bool | Nil = nil, @x_kubernetes_embedded_resource : Bool | Nil = nil, @x_kubernetes_int_or_string : Bool | Nil = nil, @x_kubernetes_preserve_unknown_fields : Bool | Nil = nil)
    end
  end
end
