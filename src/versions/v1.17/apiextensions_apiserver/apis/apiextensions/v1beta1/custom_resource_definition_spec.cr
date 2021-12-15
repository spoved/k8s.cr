# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  @[::K8S::Properties(
    additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
    conversion: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion, nilable: true, key: "conversion", getter: false, setter: false},
    group: {type: String, nilable: false, key: "group", getter: false, setter: false},
    names: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
    preserve_unknown_fields: {type: Bool, nilable: true, key: "preserveUnknownFields", getter: false, setter: false},
    scope: {type: String, nilable: false, key: "scope", getter: false, setter: false},
    subresources: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, nilable: true, key: "subresources", getter: false, setter: false},
    validation: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, nilable: true, key: "validation", getter: false, setter: false},
    version: {type: String, nilable: true, key: "version", getter: false, setter: false},
    versions: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion), nilable: true, key: "versions", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.)
    @[::JSON::Field(key: "additionalPrinterColumns", emit_null: false)]
    @[::YAML::Field(key: "additionalPrinterColumns", emit_null: false)]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) | Nil

    # conversion defines conversion settings for the CRD.
    @[::JSON::Field(key: "conversion", emit_null: false)]
    @[::YAML::Field(key: "conversion", emit_null: false)]
    property conversion : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion | Nil

    # group is the API group of the defined custom resource. The custom resources are served under [`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)
    @[::JSON::Field(key: "group", emit_null: true)]
    @[::YAML::Field(key: "group", emit_null: true)]
    property group : String

    # names specify the resource and kind names for the custom resource.
    @[::JSON::Field(key: "names", emit_null: true)]
    @[::YAML::Field(key: "names", emit_null: true)]
    property names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)
    @[::JSON::Field(key: "preserveUnknownFields", emit_null: false)]
    @[::YAML::Field(key: "preserveUnknownFields", emit_null: false)]
    property preserve_unknown_fields : Bool | Nil

    # scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
    @[::JSON::Field(key: "scope", emit_null: true)]
    @[::YAML::Field(key: "scope", emit_null: true)]
    property scope : String

    # subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
    @[::JSON::Field(key: "subresources", emit_null: false)]
    @[::YAML::Field(key: "subresources", emit_null: false)]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    # validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
    @[::JSON::Field(key: "validation", emit_null: false)]
    @[::YAML::Field(key: "validation", emit_null: false)]
    property validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # version is the API version of the defined custom resource. The custom resources are served under [`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.](`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.)
    @[::JSON::Field(key: "version", emit_null: false)]
    @[::YAML::Field(key: "version", emit_null: false)]
    property version : String | Nil

    # versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @[::JSON::Field(key: "versions", emit_null: false)]
    @[::YAML::Field(key: "versions", emit_null: false)]
    property versions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion) | Nil

    def initialize(*, @group : String, @names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @scope : String, @additional_printer_columns : Array | Nil = nil, @conversion : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion | Nil = nil, @preserve_unknown_fields : Bool | Nil = nil, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil, @validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil, @version : String | Nil = nil, @versions : Array | Nil = nil)
    end
  end
end
