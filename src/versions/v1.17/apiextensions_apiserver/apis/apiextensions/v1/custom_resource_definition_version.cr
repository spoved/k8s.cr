# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_column_definition"
require "./custom_resource_validation"
require "./custom_resource_subresources"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionVersion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "additional_printer_columns", kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition), key: "additionalPrinterColumns", nilable: true, read_only: false, description: "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)"},
    {name: "schema", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation, key: "schema", nilable: true, read_only: false, description: "schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource."},
    {name: "served", kind: ::Bool, key: "served", nilable: false, read_only: false, description: "served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    {name: "storage", kind: ::Bool, key: "storage", nilable: false, read_only: false, description: "storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true."},
    {name: "subresources", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources, key: "subresources", nilable: true, read_only: false, description: "subresources specify what subresources this version of the defined custom resource have."},

  ]
)
