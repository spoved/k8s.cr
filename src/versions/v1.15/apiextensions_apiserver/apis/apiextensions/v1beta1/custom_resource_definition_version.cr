# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, nilable: true, key: "schema", getter: false, setter: false},
    served: {type: Bool, nilable: false, key: "served", getter: false, setter: false},
    storage: {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
    subresources: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null
    @[::JSON::Field(key: "additionalPrinterColumns", emit_null: false)]
    @[::YAML::Field(key: "additionalPrinterColumns", emit_null: false)]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) | Nil

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[::JSON::Field(key: "schema", emit_null: false)]
    @[::YAML::Field(key: "schema", emit_null: false)]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[::JSON::Field(key: "served", emit_null: true)]
    @[::YAML::Field(key: "served", emit_null: true)]
    property served : Bool

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    @[::JSON::Field(key: "storage", emit_null: true)]
    @[::YAML::Field(key: "storage", emit_null: true)]
    property storage : Bool

    # Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[::JSON::Field(key: "subresources", emit_null: false)]
    @[::YAML::Field(key: "subresources", emit_null: false)]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    def initialize(*, @name : String, @served : Bool, @storage : Bool, @additional_printer_columns : Array | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil)
    end
  end
end
