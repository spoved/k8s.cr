# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    schema: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation, nilable: true, key: "schema", getter: false, setter: false},
    served: {type: Bool, nilable: false, key: "served", getter: false, setter: false},
    storage: {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
    subresources: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)
    @[::JSON::Field(key: "additionalPrinterColumns", emit_null: false)]
    @[::YAML::Field(key: "additionalPrinterColumns", emit_null: false)]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) | Nil

    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
    @[::JSON::Field(key: "schema", emit_null: false)]
    @[::YAML::Field(key: "schema", emit_null: false)]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil

    # served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[::JSON::Field(key: "served", emit_null: true)]
    @[::YAML::Field(key: "served", emit_null: true)]
    property served : Bool

    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    @[::JSON::Field(key: "storage", emit_null: true)]
    @[::YAML::Field(key: "storage", emit_null: true)]
    property storage : Bool

    # subresources specify what subresources this version of the defined custom resource have.
    @[::JSON::Field(key: "subresources", emit_null: false)]
    @[::YAML::Field(key: "subresources", emit_null: false)]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil

    def initialize(*, @name : String, @served : Bool, @storage : Bool, @additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) | Nil = nil, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil = nil, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil = nil)
    end
  end
end
