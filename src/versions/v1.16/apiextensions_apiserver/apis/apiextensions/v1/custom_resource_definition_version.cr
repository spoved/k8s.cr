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
    alias ValueType = ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) | String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | ::Bool | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil
    alias Instance = ::K8S::Object(ValueType)

    # additionalPrinterColumns specifies additional columns returned in Table output. See [[https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.))
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?)
    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [[`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)]([`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.))
    abstract def name : String
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
    abstract def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?)
    # served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    abstract def storage : ::Bool
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
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?)
  end

  # CustomResourceDefinitionVersion describes a version for CRD.
  @[::K8S::Properties(
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)"},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)"},
    schema: {key: "schema", accessor: "schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource."},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true."},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "subresources specify what subresources this version of the defined custom resource have."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
    include ::K8S::Kubernetes::Object

    # additionalPrinterColumns specifies additional columns returned in Table output. See [[https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.))
    def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
      self.["additionalPrinterColumns"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?)
    end

    # :ditto:
    def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)
      self.["additionalPrinterColumns"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?).not_nil!
    end

    # :ditto:
    def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?
      self.["additionalPrinterColumns"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?)
    end

    # :ditto:
    def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition)?)
      self.["additionalPrinterColumns"] = value
    end

    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [[`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)]([`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.))
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

    # schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
    def schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?
      self.["schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?)
    end

    # :ditto:
    def schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
      self.["schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?).not_nil!
    end

    # :ditto:
    def schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?
      self.["schema"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?)
    end

    # :ditto:
    def schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation?)
      self.["schema"] = value
    end

    # served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
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

    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
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

    # subresources specify what subresources this version of the defined custom resource have.
    def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?
      self.["subresources"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?)
    end

    # :ditto:
    def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources
      self.["subresources"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?).not_nil!
    end

    # :ditto:
    def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?
      self.["subresources"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?)
    end

    # :ditto:
    def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources?)
      self.["subresources"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "schema", accessor: "schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation },
        { key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources },
      ])
end
  end
end
