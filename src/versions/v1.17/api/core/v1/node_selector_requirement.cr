# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSelectorRequirement; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSelectorRequirement`.
  module Types::Api::Core::V1::NodeSelectorRequirement
    alias ValueType = String | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The label key that the selector applies to.
    abstract def key : String
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
    abstract def operator : String
    # :ditto:
    abstract def operator! : String
    # :ditto:
    abstract def operator? : String?
    # :ditto:
    abstract def operator=(value : String)
    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
    abstract def values : ::Array(String)?
    # :ditto:
    abstract def values! : ::Array(String)
    # :ditto:
    abstract def values? : ::Array(String)?
    # :ditto:
    abstract def values=(value : ::Array(String)?)
  end

  # A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  @[::K8S::Properties(
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "The label key that the selector applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operator: {key: "operator", accessor: "operator", kind: "String", nilable: false, default: nil, read_only: false, description: "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    values: {key: "values", accessor: "values", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeSelectorRequirement < ::K8S::Types::Api::Core::V1::NodeSelectorRequirement::Instance
    include ::K8S::Types::Api::Core::V1::NodeSelectorRequirement
    include ::K8S::Kubernetes::Object

    # The label key that the selector applies to.
    def key : String
      self.["key"].as(String)
    end

    # :ditto:
    def key! : String
      self.["key"].as(String).not_nil!
    end

    # :ditto:
    def key? : String?
      self.["key"]?.as(String?)
    end

    # :ditto:
    def key=(value : String)
      self.["key"] = value
    end

    # Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
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

    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
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
        { key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String },
        { key: "operator", accessor: "operator", nilable: false, read_only: false, default: nil, kind: String },
        { key: "values", accessor: "values", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
