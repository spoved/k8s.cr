# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion; end

require "./custom_resource_column_definition"
require "./custom_resource_validation"
require "./custom_resource_subresources"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition))
    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    abstract def name : String?
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
    abstract def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation)
    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool?
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    abstract def storage : ::Bool?
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
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources)
  end

  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    schema: {key: "schema", accessor: "schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    k8s_object_accessor("additionalPrinterColumns", additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), true, false, "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null")
    k8s_object_accessor("name", name : String, false, false, "Name is the version name, e.g. “v1”, “v2beta1”, etc.")
    k8s_object_accessor("schema", schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, true, false, "Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.")
    k8s_object_accessor("served", served : ::Bool, false, false, "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)")
    k8s_object_accessor("storage", storage : ::Bool, false, false, "Storage flags the version as storage version. There must be exactly one flagged as storage version.")
    k8s_object_accessor("subresources", subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, true, false, "Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.")

    def initialize(*, additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)? = nil, name : String? = nil, schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation? = nil, served : ::Bool? = nil, storage : ::Bool? = nil, subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources? = nil)
      super()
      self.["additionalPrinterColumns"] = additional_printer_columns
      self.["name"] = name
      self.["schema"] = schema
      self.["served"] = served
      self.["storage"] = storage
      self.["subresources"] = subresources
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation},
      {key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources},
    ])
  end
end
