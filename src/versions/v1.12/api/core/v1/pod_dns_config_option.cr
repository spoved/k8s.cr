# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodDNSConfigOption; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodDNSConfigOption`.
  module Types::Api::Core::V1::PodDNSConfigOption
    # Required.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    #
    abstract def value : String?
    # :ditto:
    abstract def value! : String
    # :ditto:
    abstract def value? : String?
    # :ditto:
    abstract def value=(value : String)
  end

  # PodDNSConfigOption defines DNS resolver options of a pod.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodDNSConfigOption < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodDNSConfigOption
    k8s_object_accessor("name", name : String, true, false, "Required.")
    k8s_object_accessor("value", value : String, true, false, nil)

    def initialize(*, name : String? = nil, value : String? = nil)
      super()
      self.["name"] = name
      self.["value"] = value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
