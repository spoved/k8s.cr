# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CustomResourceDefinitionVersion describes a version for CRD.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) | Nil

    # deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
    property deprecated : Bool | Nil

    # deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
    property deprecation_warning : String | Nil

    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)
    property name : String

    # schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil

    # served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    property served : Bool

    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    property storage : Bool

    # subresources specify what subresources this version of the defined custom resource have.
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil

    ::YAML.mapping({
      additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
      deprecated:                 {type: Bool, nilable: true, key: "deprecated", getter: false, setter: false},
      deprecation_warning:        {type: String, nilable: true, key: "deprecationWarning", getter: false, setter: false},
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      schema:                     {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation, nilable: true, key: "schema", getter: false, setter: false},
      served:                     {type: Bool, nilable: false, key: "served", getter: false, setter: false},
      storage:                    {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
      subresources:               {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
      deprecated:                 {type: Bool, nilable: true, key: "deprecated", getter: false, setter: false},
      deprecation_warning:        {type: String, nilable: true, key: "deprecationWarning", getter: false, setter: false},
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      schema:                     {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation, nilable: true, key: "schema", getter: false, setter: false},
      served:                     {type: Bool, nilable: false, key: "served", getter: false, setter: false},
      storage:                    {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
      subresources:               {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @served : Bool, @storage : Bool, @additional_printer_columns : Array | Nil = nil, @deprecated : Bool | Nil = nil, @deprecation_warning : String | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil = nil, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil = nil)
    end
  end
end
