# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./json_schema_props_or_bool"
require "./json_schema_props"
require "./json"
require "./json_schema_props_or_string_array"
require "./external_documentation"
require "./json_schema_props_or_array"
require "./validation_rule"

::K8S::Kubernetes::Resource.define_object("JsonSchemaProps",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "ref", kind: String, key: "$ref", nilable: true, read_only: false, description: nil},
    {name: "schema", kind: String, key: "$schema", nilable: true, read_only: false, description: nil},
    {name: "additional_items", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool, key: "additionalItems", nilable: true, read_only: false, description: nil},
    {name: "additional_properties", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool, key: "additionalProperties", nilable: true, read_only: false, description: nil},
    {name: "all_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "allOf", nilable: true, read_only: false, description: nil},
    {name: "any_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "anyOf", nilable: true, read_only: false, description: nil},
    {name: "default", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json, key: "default", nilable: true, read_only: false, description: "default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false."},
    {name: "definitions", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "definitions", nilable: true, read_only: false, description: nil},
    {name: "dependencies", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray), key: "dependencies", nilable: true, read_only: false, description: nil},
    {name: "description", kind: String, key: "description", nilable: true, read_only: false, description: nil},
    {name: "_enum", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json), key: "enum", nilable: true, read_only: false, description: nil},
    {name: "example", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::Json, key: "example", nilable: true, read_only: false, description: nil},
    {name: "exclusive_maximum", kind: ::Bool, key: "exclusiveMaximum", nilable: true, read_only: false, description: nil},
    {name: "exclusive_minimum", kind: ::Bool, key: "exclusiveMinimum", nilable: true, read_only: false, description: nil},
    {name: "external_docs", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation, key: "externalDocs", nilable: true, read_only: false, description: nil},
    {name: "format", kind: String, key: "format", nilable: true, read_only: false, description: "format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:\n\n- bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang [net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like \"0321751043\" or \"978-0321751041\" - isbn10: an ISBN10 number string like \"0321751043\" - isbn13: an ISBN13 number string like \"978-0321751041\" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$ - hexcolor: an hexadecimal color code like \"#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like \"rgb(255,255,2559\" - byte: base64 encoded binary data - password: any kind of string - date: a date string like \"2006-01-02\" as defined by full-date in RFC3339 - duration: a duration string like \"22 ns\" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like \"2014-12-15T19:30:20.000Z\" as defined by date-time in RFC3339.](net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like \"0321751043\" or \"978-0321751041\" - isbn10: an ISBN10 number string like \"0321751043\" - isbn13: an ISBN13 number string like \"978-0321751041\" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$ - hexcolor: an hexadecimal color code like \"#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like \"rgb(255,255,2559\" - byte: base64 encoded binary data - password: any kind of string - date: a date string like \"2006-01-02\" as defined by full-date in RFC3339 - duration: a duration string like \"22 ns\" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like \"2014-12-15T19:30:20.000Z\" as defined by date-time in RFC3339.)"},
    {name: "id", kind: String, key: "id", nilable: true, read_only: false, description: nil},
    {name: "items", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray, key: "items", nilable: true, read_only: false, description: nil},
    {name: "max_items", kind: Int32, key: "maxItems", nilable: true, read_only: false, description: nil},
    {name: "max_length", kind: Int32, key: "maxLength", nilable: true, read_only: false, description: nil},
    {name: "max_properties", kind: Int32, key: "maxProperties", nilable: true, read_only: false, description: nil},
    {name: "maximum", kind: Int32, key: "maximum", nilable: true, read_only: false, description: nil},
    {name: "min_items", kind: Int32, key: "minItems", nilable: true, read_only: false, description: nil},
    {name: "min_length", kind: Int32, key: "minLength", nilable: true, read_only: false, description: nil},
    {name: "min_properties", kind: Int32, key: "minProperties", nilable: true, read_only: false, description: nil},
    {name: "minimum", kind: Int32, key: "minimum", nilable: true, read_only: false, description: nil},
    {name: "multiple_of", kind: Int32, key: "multipleOf", nilable: true, read_only: false, description: nil},
    {name: "not", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps, key: "not", nilable: true, read_only: false, description: nil},
    {name: "nullable", kind: ::Bool, key: "nullable", nilable: true, read_only: false, description: nil},
    {name: "one_of", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "oneOf", nilable: true, read_only: false, description: nil},
    {name: "pattern", kind: String, key: "pattern", nilable: true, read_only: false, description: nil},
    {name: "pattern_properties", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "patternProperties", nilable: true, read_only: false, description: nil},
    {name: "properties", kind: ::Hash(String, ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps), key: "properties", nilable: true, read_only: false, description: nil},
    {name: "required", kind: ::Array(String), key: "required", nilable: true, read_only: false, description: nil},
    {name: "title", kind: String, key: "title", nilable: true, read_only: false, description: nil},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: nil},
    {name: "unique_items", kind: ::Bool, key: "uniqueItems", nilable: true, read_only: false, description: nil},
    {name: "x_kubernetes_embedded_resource", kind: ::Bool, key: "x-kubernetes-embedded-resource", nilable: true, read_only: false, description: "x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata)."},
    {name: "x_kubernetes_int_or_string", kind: ::Bool, key: "x-kubernetes-int-or-string", nilable: true, read_only: false, description: "x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:\n\n1) anyOf:\n   - type: integer\n   - type: string\n2) allOf:\n   - anyOf:\n     - type: integer\n     - type: string\n   - ... zero or more"},
    {name: "x_kubernetes_list_map_keys", kind: ::Array(String), key: "x-kubernetes-list-map-keys", nilable: true, read_only: false, description: "x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.\n\nThis tag MUST only be used on lists that have the \"x-kubernetes-list-type\" extension set to \"map\". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).\n\nThe properties specified must either be required or have a default value, to ensure those properties are present for all list items."},
    {name: "x_kubernetes_list_type", kind: String, key: "x-kubernetes-list-type", nilable: true, read_only: false, description: "x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:\n\n1) `atomic`: the list is treated as a single entity, like a scalar.\n     Atomic lists will be entirely replaced when updated. This extension\n     may be used on any type of list (struct, scalar, ...).\n2) `set`:\n     Sets are lists that must not have multiple items with the same value. Each\n     value must be a scalar, an object with x-kubernetes-map-type `atomic` or an\n     array with x-kubernetes-list-type `atomic`.\n3) `map`:\n     These lists are like maps in that their elements have a non-index key\n     used to identify them. Order is preserved upon merge. The map tag\n     must only be used on a list with elements of type object.\nDefaults to atomic for arrays."},
    {name: "x_kubernetes_map_type", kind: String, key: "x-kubernetes-map-type", nilable: true, read_only: false, description: "x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:\n\n1) `granular`:\n     These maps are actual maps (key-value pairs) and each fields are independent\n     from each other (they can each be manipulated by separate actors). This is\n     the default behaviour for all maps.\n2) `atomic`: the list is treated as a single entity, like a scalar.\n     Atomic maps will be entirely replaced when updated."},
    {name: "x_kubernetes_preserve_unknown_fields", kind: ::Bool, key: "x-kubernetes-preserve-unknown-fields", nilable: true, read_only: false, description: "x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden."},
    {name: "x_kubernetes_validations", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::ValidationRule), key: "x-kubernetes-validations", nilable: true, read_only: false, description: "x-kubernetes-validations describes a list of validation rules written in the CEL expression language. This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled."},

  ]
)