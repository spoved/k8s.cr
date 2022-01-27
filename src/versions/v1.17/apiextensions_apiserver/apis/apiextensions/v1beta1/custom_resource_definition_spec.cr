# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec; end

require "./custom_resource_column_definition"
require "./custom_resource_conversion"
require "./custom_resource_definition_names"
require "./custom_resource_subresources"
require "./custom_resource_validation"
require "./custom_resource_definition_version"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    # additionalPrinterColumns specifies additional columns returned in Table output. See [[https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.)](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.))
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition))
    # conversion defines conversion settings for the CRD.
    abstract def conversion : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion?
    # :ditto:
    abstract def conversion! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    # :ditto:
    abstract def conversion? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion?
    # :ditto:
    abstract def conversion=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion)
    # group is the API group of the defined custom resource. The custom resources are served under [[`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)]([`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).))
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # names specify the resource and kind names for the custom resource.
    abstract def names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    # :ditto:
    abstract def names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames)
    # preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See [[https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.))
    abstract def preserve_unknown_fields : ::Bool?
    # :ditto:
    abstract def preserve_unknown_fields! : ::Bool
    # :ditto:
    abstract def preserve_unknown_fields? : ::Bool?
    # :ditto:
    abstract def preserve_unknown_fields=(value : ::Bool)
    # scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.
    abstract def scope : String?
    # :ditto:
    abstract def scope! : String
    # :ditto:
    abstract def scope? : String?
    # :ditto:
    abstract def scope=(value : String)
    # subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.
    abstract def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    # :ditto:
    abstract def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources)
    # validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.
    abstract def validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def validation! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    # :ditto:
    abstract def validation? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def validation=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation)
    # version is the API version of the defined custom resource. The custom resources are served under [[`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.](`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.)]([`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.](`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.))
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String)
    # versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    abstract def versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)?
    # :ditto:
    abstract def versions! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)
    # :ditto:
    abstract def versions? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)?
    # :ditto:
    abstract def versions=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion))
  end

  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  @[::K8S::Properties(
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conversion: {key: "conversion", accessor: "conversion", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion", nilable: true, default: nil, read_only: false, description: "conversion defines conversion settings for the CRD.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "String", nilable: false, default: nil, read_only: false, description: "group is the API group of the defined custom resource. The custom resources are served under [`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    names: {key: "names", accessor: "names", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames", nilable: false, default: nil, read_only: false, description: "names specify the resource and kind names for the custom resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    preserve_unknown_fields: {key: "preserveUnknownFields", accessor: "preserve_unknown_fields", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope: {key: "scope", accessor: "scope", kind: "String", nilable: false, default: nil, read_only: false, description: "scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    validation: {key: "validation", accessor: "validation", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: true, default: nil, read_only: false, description: "version is the API version of the defined custom resource. The custom resources are served under [`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.](`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    versions: {key: "versions", accessor: "versions", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)", nilable: true, default: nil, read_only: false, description: "versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    k8s_object_accessor("additionalPrinterColumns", additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), true, false, "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If present, this field configures columns for all versions. Top-level and per-version columns are mutually exclusive. If no top-level or per-version columns are specified, a single column displaying the age of the custom resource is used.)")
    k8s_object_accessor("conversion", conversion : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion, true, false, "conversion defines conversion settings for the CRD.")
    k8s_object_accessor("group", group : String, false, false, "group is the API group of the defined custom resource. The custom resources are served under [`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)")
    k8s_object_accessor("names", names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, false, false, "names specify the resource and kind names for the custom resource.")
    k8s_object_accessor("preserveUnknownFields", preserve_unknown_fields : ::Bool, true, false, "preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. If false, schemas must be defined for all versions. Defaults to true in v1beta for backwards compatibility. Deprecated: will be required to be false in v1. Preservation of unknown fields can be specified in the validation schema using the `x-kubernetes-preserve-unknown-fields: true` extension. See [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)")
    k8s_object_accessor("scope", scope : String, false, false, "scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`. Default is `Namespaced`.")
    k8s_object_accessor("subresources", subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, true, false, "subresources specify what subresources the defined custom resource has. If present, this field configures subresources for all versions. Top-level and per-version subresources are mutually exclusive.")
    k8s_object_accessor("validation", validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, true, false, "validation describes the schema used for validation and pruning of the custom resource. If present, this validation schema is used to validate all versions. Top-level and per-version schemas are mutually exclusive.")
    k8s_object_accessor("version", version : String, true, false, "version is the API version of the defined custom resource. The custom resources are served under [`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.](`/apis/<group>/<version>/...`. Must match the name of the first item in the `versions` list if `version` and `versions` are both specified. Optional if `versions` is specified. Deprecated: use `versions` instead.)")
    k8s_object_accessor("versions", versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion), true, false, "versions is the list of all API versions of the defined custom resource. Optional if `version` is specified. The name of the first item in the `versions` list must match the `version` field if `version` and `versions` are both specified. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.")

    def initialize(*, additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)? = nil, conversion : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion? = nil, group : String? = nil, names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames? = nil, preserve_unknown_fields : ::Bool? = nil, scope : String? = nil, subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources? = nil, validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation? = nil, version : String? = nil, versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)? = nil)
      super()
      self.["additionalPrinterColumns"] = additional_printer_columns
      self.["conversion"] = conversion
      self.["group"] = group
      self.["names"] = names
      self.["preserveUnknownFields"] = preserve_unknown_fields
      self.["scope"] = scope
      self.["subresources"] = subresources
      self.["validation"] = validation
      self.["version"] = version
      self.["versions"] = versions
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)},
      {key: "conversion", accessor: "conversion", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion},
      {key: "group", accessor: "group", nilable: false, read_only: false, default: nil, kind: String},
      {key: "names", accessor: "names", nilable: false, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames},
      {key: "preserveUnknownFields", accessor: "preserve_unknown_fields", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "scope", accessor: "scope", nilable: false, read_only: false, default: nil, kind: String},
      {key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources},
      {key: "validation", accessor: "validation", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation},
      {key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "versions", accessor: "versions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)},
    ])
  end
end
