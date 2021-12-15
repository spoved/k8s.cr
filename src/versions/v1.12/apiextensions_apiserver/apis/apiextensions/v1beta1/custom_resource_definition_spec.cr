# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  @[::K8S::Properties(
    additional_printer_columns: {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition), nilable: true, key: "additionalPrinterColumns", getter: false, setter: false},
    group: {type: String, nilable: false, key: "group", getter: false, setter: false},
    names: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: false, key: "names", getter: false, setter: false},
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

    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column.
    @[::JSON::Field(key: "additionalPrinterColumns", emit_null: false)]
    @[::YAML::Field(key: "additionalPrinterColumns", emit_null: false)]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) | Nil

    # Group is the group this resource belongs in
    @[::JSON::Field(key: "group", emit_null: true)]
    @[::YAML::Field(key: "group", emit_null: true)]
    property group : String

    # Names are the names used to describe this custom resource
    @[::JSON::Field(key: "names", emit_null: true)]
    @[::YAML::Field(key: "names", emit_null: true)]
    property names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced
    @[::JSON::Field(key: "scope", emit_null: true)]
    @[::YAML::Field(key: "scope", emit_null: true)]
    property scope : String

    # Subresources describes the subresources for CustomResources
    @[::JSON::Field(key: "subresources", emit_null: false)]
    @[::YAML::Field(key: "subresources", emit_null: false)]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    # Validation describes the validation methods for CustomResources
    @[::JSON::Field(key: "validation", emit_null: false)]
    @[::YAML::Field(key: "validation", emit_null: false)]
    property validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # Version is the version this resource belongs in Should be always first item in Versions field if provided. Optional, but at least one of Version or Versions must be set. Deprecated: Please use `Versions`.
    @[::JSON::Field(key: "version", emit_null: false)]
    @[::YAML::Field(key: "version", emit_null: false)]
    property version : String | Nil

    # Versions is the list of all supported versions for this resource. If Version field is provided, this field is optional. Validation: All versions must use the same validation schema for now. i.e., top level Validation field is applied to all of these versions. Order: The version name will be used to compute the order. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @[::JSON::Field(key: "versions", emit_null: false)]
    @[::YAML::Field(key: "versions", emit_null: false)]
    property versions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion) | Nil

    def initialize(*, @group : String, @names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @scope : String, @additional_printer_columns : Array | Nil = nil, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil, @validation : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil, @version : String | Nil = nil, @versions : Array | Nil = nil)
    end
  end
end
