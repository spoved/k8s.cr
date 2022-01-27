# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScopedResourceSelectorRequirement; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ScopedResourceSelectorRequirement`.
  module Types::Api::Core::V1::ScopedResourceSelectorRequirement
    # Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
    abstract def operator : String?
    # :ditto:
    abstract def operator! : String
    # :ditto:
    abstract def operator? : String?
    # :ditto:
    abstract def operator=(value : String)
    # The name of the scope that the selector applies to.
    abstract def scope_name : String?
    # :ditto:
    abstract def scope_name! : String
    # :ditto:
    abstract def scope_name? : String?
    # :ditto:
    abstract def scope_name=(value : String)
    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    abstract def values : ::Array(String)?
    # :ditto:
    abstract def values! : ::Array(String)
    # :ditto:
    abstract def values? : ::Array(String)?
    # :ditto:
    abstract def values=(value : ::Array(String))
  end

  # A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
  @[::K8S::Properties(
    operator: {key: "operator", accessor: "operator", kind: "String", nilable: false, default: nil, read_only: false, description: "Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope_name: {key: "scopeName", accessor: "scope_name", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the scope that the selector applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    values: {key: "values", accessor: "values", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ScopedResourceSelectorRequirement < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ScopedResourceSelectorRequirement
    k8s_object_accessor("operator", operator : String, false, false, "Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.")
    k8s_object_accessor("scopeName", scope_name : String, false, false, "The name of the scope that the selector applies to.")
    k8s_object_accessor("values", values : ::Array(String), true, false, "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.")

    def initialize(*, operator : String? = nil, scope_name : String? = nil, values : ::Array(String)? = nil)
      super()
      self.["operator"] = operator
      self.["scopeName"] = scope_name
      self.["values"] = values
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "operator", accessor: "operator", nilable: false, read_only: false, default: nil, kind: String},
      {key: "scopeName", accessor: "scope_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "values", accessor: "values", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
