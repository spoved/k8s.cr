# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion; end

require "./custom_resource_column_definition"
require "./custom_resource_validation"
require "./custom_resource_subresources"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
    # additionalPrinterColumns specifies additional columns returned in Table output. See [[https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.))
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition))
    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [[`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)]([`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
    abstract def schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?
    # :ditto:
    abstract def schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
    # :ditto:
    abstract def schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?
    # :ditto:
    abstract def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation)
    # served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool?
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    abstract def storage : ::Bool?
    # :ditto:
    abstract def storage! : ::Bool
    # :ditto:
    abstract def storage? : ::Bool?
    # :ditto:
    abstract def storage=(value : ::Bool)
    # subresources specify what subresources this version of the defined custom resource have.
    abstract def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources
    # :ditto:
    abstract def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources)
  end

  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    schema: {key: "schema", accessor: "schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "subresources specify what subresources this version of the defined custom resource have.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
    k8s_object_accessor("additionalPrinterColumns", additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition), true, false, "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)")
    k8s_object_accessor("name", name : String, false, false, "name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)")
    k8s_object_accessor("schema", schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation, true, false, "schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.")
    k8s_object_accessor("served", served : ::Bool, false, false, "served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)")
    k8s_object_accessor("storage", storage : ::Bool, false, false, "storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.")
    k8s_object_accessor("subresources", subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources, true, false, "subresources specify what subresources this version of the defined custom resource have.")

    def initialize(*, additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)? = nil, name : String? = nil, schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation? = nil, served : ::Bool? = nil, storage : ::Bool? = nil, subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources? = nil)
      super()
      self.["additionalPrinterColumns"] = additional_printer_columns
      self.["name"] = name
      self.["schema"] = schema
      self.["served"] = served
      self.["storage"] = storage
      self.["subresources"] = subresources
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation},
      {key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources},
    ])
  end
end
