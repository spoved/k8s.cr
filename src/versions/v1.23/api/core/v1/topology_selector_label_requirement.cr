# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::TopologySelectorLabelRequirement; end

module K8S
  # Namespace holding the types for `Api::Core::V1::TopologySelectorLabelRequirement`.
  module Types::Api::Core::V1::TopologySelectorLabelRequirement
    # The label key that the selector applies to.
    abstract def key : String?
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
    abstract def values : ::Array(String)?
    # :ditto:
    abstract def values! : ::Array(String)
    # :ditto:
    abstract def values? : ::Array(String)?
    # :ditto:
    abstract def values=(value : ::Array(String))
  end

  # A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
  @[::K8S::Properties(
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "The label key that the selector applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    values: {key: "values", accessor: "values", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "An array of string values. One value must match the label to be selected. Each entry in Values is ORed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::TopologySelectorLabelRequirement < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::TopologySelectorLabelRequirement
    k8s_object_accessor("key", key : String, false, false, "The label key that the selector applies to.")
    k8s_object_accessor("values", values : ::Array(String), false, false, "An array of string values. One value must match the label to be selected. Each entry in Values is ORed.")

    def initialize(*, key : String? = nil, values : ::Array(String)? = nil)
      super()
      self.["key"] = key
      self.["values"] = values
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String},
      {key: "values", accessor: "values", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
