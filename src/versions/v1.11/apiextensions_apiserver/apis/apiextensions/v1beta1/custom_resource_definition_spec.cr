# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec; end

require "./custom_resource_column_definition"
require "./custom_resource_definition_names"
require "./custom_resource_subresources"
require "./custom_resource_validation"
require "./custom_resource_definition_version"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column.
    abstract def additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)
    # :ditto:
    abstract def additional_printer_columns? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)?
    # :ditto:
    abstract def additional_printer_columns=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition))
    # Group is the group this resource belongs in
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # Names are the names used to describe this custom resource
    abstract def names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    # :ditto:
    abstract def names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames)
    # Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced
    abstract def scope : String?
    # :ditto:
    abstract def scope! : String
    # :ditto:
    abstract def scope? : String?
    # :ditto:
    abstract def scope=(value : String)
    # Subresources describes the subresources for CustomResources
    abstract def subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    # :ditto:
    abstract def subresources? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources?
    # :ditto:
    abstract def subresources=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources)
    # Validation describes the validation methods for CustomResources
    abstract def validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def validation! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    # :ditto:
    abstract def validation? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation?
    # :ditto:
    abstract def validation=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation)
    # Version is the version this resource belongs in Should be always first item in Versions field if provided. Optional, but at least one of Version or Versions must be set. Deprecated: Please use `Versions`.
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String)
    # Versions is the list of all supported versions for this resource. If Version field is provided, this field is optional. Validation: All versions must use the same validation schema for now. i.e., top level Validation field is applied to all of these versions. Order: The version name will be used to compute the order. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
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
    additional_printer_columns: {key: "additionalPrinterColumns", accessor: "additional_printer_columns", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)", nilable: true, default: nil, read_only: false, description: "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "String", nilable: false, default: nil, read_only: false, description: "Group is the group this resource belongs in", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    names: {key: "names", accessor: "names", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames", nilable: false, default: nil, read_only: false, description: "Names are the names used to describe this custom resource", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope: {key: "scope", accessor: "scope", kind: "String", nilable: false, default: nil, read_only: false, description: "Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subresources: {key: "subresources", accessor: "subresources", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources", nilable: true, default: nil, read_only: false, description: "Subresources describes the subresources for CustomResources", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    validation: {key: "validation", accessor: "validation", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation", nilable: true, default: nil, read_only: false, description: "Validation describes the validation methods for CustomResources", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: true, default: nil, read_only: false, description: "Version is the version this resource belongs in Should be always first item in Versions field if provided. Optional, but at least one of Version or Versions must be set. Deprecated: Please use `Versions`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    versions: {key: "versions", accessor: "versions", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)", nilable: true, default: nil, read_only: false, description: "Versions is the list of all supported versions for this resource. If Version field is provided, this field is optional. Validation: All versions must use the same validation schema for now. i.e., top level Validation field is applied to all of these versions. Order: The version name will be used to compute the order. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec
    k8s_object_accessor("additionalPrinterColumns", additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), true, false, "AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column.")
    k8s_object_accessor("group", group : String, false, false, "Group is the group this resource belongs in")
    k8s_object_accessor("names", names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, false, false, "Names are the names used to describe this custom resource")
    k8s_object_accessor("scope", scope : String, false, false, "Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced")
    k8s_object_accessor("subresources", subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources, true, false, "Subresources describes the subresources for CustomResources")
    k8s_object_accessor("validation", validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation, true, false, "Validation describes the validation methods for CustomResources")
    k8s_object_accessor("version", version : String, true, false, "Version is the version this resource belongs in Should be always first item in Versions field if provided. Optional, but at least one of Version or Versions must be set. Deprecated: Please use `Versions`.")
    k8s_object_accessor("versions", versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion), true, false, "Versions is the list of all supported versions for this resource. If Version field is provided, this field is optional. Validation: All versions must use the same validation schema for now. i.e., top level Validation field is applied to all of these versions. Order: The version name will be used to compute the order. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.")

    def initialize(*, additional_printer_columns : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)? = nil, group : String? = nil, names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames? = nil, scope : String? = nil, subresources : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources? = nil, validation : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation? = nil, version : String? = nil, versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)? = nil)
      super()
      self.["additionalPrinterColumns"] = additional_printer_columns
      self.["group"] = group
      self.["names"] = names
      self.["scope"] = scope
      self.["subresources"] = subresources
      self.["validation"] = validation
      self.["version"] = version
      self.["versions"] = versions
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "additionalPrinterColumns", accessor: "additional_printer_columns", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition)},
      {key: "group", accessor: "group", nilable: false, read_only: false, default: nil, kind: String},
      {key: "names", accessor: "names", nilable: false, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames},
      {key: "scope", accessor: "scope", nilable: false, read_only: false, default: nil, kind: String},
      {key: "subresources", accessor: "subresources", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources},
      {key: "validation", accessor: "validation", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation},
      {key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "versions", accessor: "versions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion)},
    ])
  end
end
