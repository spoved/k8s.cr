# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScopedResourceSelectorRequirement; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ScopedResourceSelectorRequirement`.
  module Types::Api::Core::V1::ScopedResourceSelectorRequirement
    alias ValueType = String | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
    abstract def operator : String
    # :ditto:
    abstract def operator! : String
    # :ditto:
    abstract def operator? : String?
    # :ditto:
    abstract def operator=(value : String)
    # The name of the scope that the selector applies to.
    abstract def scope_name : String
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
    abstract def values=(value : ::Array(String)?)
  end

  # A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
  @[::K8S::Properties(
    operator: {key: "operator", accessor: "operator", kind: "String", nilable: false, default: nil, read_only: false, description: "Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope_name: {key: "scopeName", accessor: "scope_name", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the scope that the selector applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    values: {key: "values", accessor: "values", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ScopedResourceSelectorRequirement < ::K8S::Types::Api::Core::V1::ScopedResourceSelectorRequirement::Instance
    include ::K8S::Types::Api::Core::V1::ScopedResourceSelectorRequirement
    include ::K8S::Kubernetes::Object

    # Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
    def operator : String
      self.["operator"].as(String)
    end

    # :ditto:
    def operator! : String
      self.["operator"].as(String).not_nil!
    end

    # :ditto:
    def operator? : String?
      self.["operator"]?.as(String?)
    end

    # :ditto:
    def operator=(value : String)
      self.["operator"] = value
    end

    # The name of the scope that the selector applies to.
    def scope_name : String
      self.["scopeName"].as(String)
    end

    # :ditto:
    def scope_name! : String
      self.["scopeName"].as(String).not_nil!
    end

    # :ditto:
    def scope_name? : String?
      self.["scopeName"]?.as(String?)
    end

    # :ditto:
    def scope_name=(value : String)
      self.["scopeName"] = value
    end

    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    def values : ::Array(String)?
      self.["values"].as(::Array(String)?)
    end

    # :ditto:
    def values! : ::Array(String)
      self.["values"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def values? : ::Array(String)?
      self.["values"]?.as(::Array(String)?)
    end

    # :ditto:
    def values=(value : ::Array(String)?)
      self.["values"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "operator", accessor: "operator", nilable: false, read_only: false, default: nil, kind: String },
        { key: "scopeName", accessor: "scope_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "values", accessor: "values", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
