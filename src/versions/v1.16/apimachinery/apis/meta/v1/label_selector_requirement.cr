# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::LabelSelectorRequirement`.
  module Types::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement
    # key is the label key that the selector applies to.
    abstract def key : String?
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
    abstract def operator : String?
    # :ditto:
    abstract def operator! : String
    # :ditto:
    abstract def operator? : String?
    # :ditto:
    abstract def operator=(value : String)
    # values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    abstract def values : ::Array(String)?
    # :ditto:
    abstract def values! : ::Array(String)
    # :ditto:
    abstract def values? : ::Array(String)?
    # :ditto:
    abstract def values=(value : ::Array(String))
  end

  # A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  @[::K8S::Properties(
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "key is the label key that the selector applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operator: {key: "operator", accessor: "operator", kind: "String", nilable: false, default: nil, read_only: false, description: "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    values: {key: "values", accessor: "values", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::LabelSelectorRequirement < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement
    k8s_object_accessor("key", key : String, false, false, "key is the label key that the selector applies to.")
    k8s_object_accessor("operator", operator : String, false, false, "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.")
    k8s_object_accessor("values", values : ::Array(String), true, false, "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.")

    def initialize(*, key : String? = nil, operator : String? = nil, values : ::Array(String)? = nil)
      super()
      self.["key"] = key
      self.["operator"] = operator
      self.["values"] = values
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String},
      {key: "operator", accessor: "operator", nilable: false, read_only: false, default: nil, kind: String},
      {key: "values", accessor: "values", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
