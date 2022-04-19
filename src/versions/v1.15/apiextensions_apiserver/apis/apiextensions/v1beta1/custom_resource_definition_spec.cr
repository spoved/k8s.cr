# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_column_definition"
require "./custom_resource_conversion"
require "./custom_resource_definition_names"
require "./custom_resource_subresources"
require "./custom_resource_validation"
require "./custom_resource_definition_version"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionSpec",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "additional_printer_columns", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), key: "additionalPrinterColumns", nilable: true, read_only: false, description: "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Optional, the global columns for all versions. Top-level and per-version columns are mutually exclusive."},
    {name: "conversion", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion, key: "conversion", nilable: true, read_only: false, description: "`conversion` defines conversion settings for the CRD."},
    {name: "group", kind: String, key: "group", nilable: false, read_only: false, description: "Group is the group this resource belongs in"},
    {name: "names", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, key: "names", nilable: false, read_only: false, description: "Names are the names used to describe this custom resource"},
    {name: "preserve_unknown_fields", kind: ::Bool, key: "preserveUnknownFields", nilable: true, read_only: false, description: "preserveUnknownFields disables pruning of object fields which are not specified in the OpenAPI schema. apiVersion, kind, metadata and known fields inside metadata are always preserved. Defaults to true in v1beta and will default to false in v1."},
    {name: "scope", kind: String, key: "scope", nilable: false, read_only: false, description: "Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced"},
    {name: "subresources", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, key: "subresources", nilable: true, read_only: false, description: "Subresources describes the subresources for CustomResource Optional, the global subresources for all versions. Top-level and per-version subresources are mutually exclusive."},
    {name: "validation", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, key: "validation", nilable: true, read_only: false, description: "Validation describes the validation methods for CustomResources Optional, the global validation schema for all versions. Top-level and per-version schemas are mutually exclusive."},
    {name: "version", kind: String, key: "version", nilable: true, read_only: false, description: "Version is the version this resource belongs in Should be always first item in Versions field if provided. Optional, but at least one of Version or Versions must be set. Deprecated: Please use `Versions`."},
    {name: "versions", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion), key: "versions", nilable: true, read_only: false, description: "Versions is the list of all supported versions for this resource. If Version field is provided, this field is optional. Validation: All versions must use the same validation schema for now. i.e., top level Validation field is applied to all of these versions. Order: The version name will be used to compute the order. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10."},

  ]
)
