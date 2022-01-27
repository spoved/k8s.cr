# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Initializer; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Initializer`.
  module Types::Apimachinery::Apis::Meta::V1::Initializer
    # name of the process that is responsible for initializing this object.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # Initializer is information about an initializer that has not yet completed.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name of the process that is responsible for initializing this object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::Initializer < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Initializer
    k8s_object_accessor("name", name : String, false, false, "name of the process that is responsible for initializing this object.")

    def initialize(*, name : String? = nil)
      super()
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
