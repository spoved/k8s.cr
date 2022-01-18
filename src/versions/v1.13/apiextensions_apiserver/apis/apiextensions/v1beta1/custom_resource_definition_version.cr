# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion; end

require "./custom_resource_column_definition"
require "./custom_resource_validation"
require "./custom_resource_subresources"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    alias Key = String
    alias ValueType = ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) | String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | ::Bool | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?)
    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    abstract def schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    # :ditto:
    abstract def schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?)
    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    abstract def storage : ::Bool
    # :ditto:
    abstract def storage! : ::Bool
    # :ditto:
    abstract def storage? : ::Bool?
    # :ditto:
    abstract def storage=(value : ::Bool)
    # Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    abstract def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    # :ditto:
    abstract def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?)
  end

  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null"},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc."},
    schema: {key: "schema", accessor: "schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version."},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::K8S::Kubernetes::Object

    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null
    def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
      self.["additionalPrinterColumns"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?)
    end

    # :ditto:
    def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)
      self.["additionalPrinterColumns"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?).not_nil!
    end

    # :ditto:
    def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
      self.["additionalPrinterColumns"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?)
    end

    # :ditto:
    def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?)
      self.["additionalPrinterColumns"] = value
    end

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    def schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
      self.["schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?)
    end

    # :ditto:
    def schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
      self.["schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?).not_nil!
    end

    # :ditto:
    def schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
      self.["schema"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?)
    end

    # :ditto:
    def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?)
      self.["schema"] = value
    end

    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    def served : ::Bool
      self.["served"].as(::Bool)
    end

    # :ditto:
    def served! : ::Bool
      self.["served"].as(::Bool).not_nil!
    end

    # :ditto:
    def served? : ::Bool?
      self.["served"]?.as(::Bool?)
    end

    # :ditto:
    def served=(value : ::Bool)
      self.["served"] = value
    end

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    def storage : ::Bool
      self.["storage"].as(::Bool)
    end

    # :ditto:
    def storage! : ::Bool
      self.["storage"].as(::Bool).not_nil!
    end

    # :ditto:
    def storage? : ::Bool?
      self.["storage"]?.as(::Bool?)
    end

    # :ditto:
    def storage=(value : ::Bool)
      self.["storage"] = value
    end

    # Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
      self.["subresources"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?)
    end

    # :ditto:
    def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
      self.["subresources"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?).not_nil!
    end

    # :ditto:
    def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
      self.["subresources"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?)
    end

    # :ditto:
    def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?)
      self.["subresources"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation },
        { key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources },
      ])
end
  end
end
