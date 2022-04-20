# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_column_definition"
require "./custom_resource_validation"
require "./custom_resource_subresources"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionVersion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "additional_printer_columns", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), key: "additionalPrinterColumns", nilable: true, read_only: false, description: "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc."},
    {name: "schema", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, key: "schema", nilable: true, read_only: false, description: "Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},
    {name: "served", kind: ::Bool, key: "served", nilable: false, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    {name: "storage", kind: ::Bool, key: "storage", nilable: false, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version."},
    {name: "subresources", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, key: "subresources", nilable: true, read_only: false, description: "Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},

  ]
)
