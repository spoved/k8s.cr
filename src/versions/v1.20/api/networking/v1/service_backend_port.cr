# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::ServiceBackendPort; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::ServiceBackendPort`.
  module Types::Api::Networking::V1::ServiceBackendPort
    # Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
    abstract def number : Int32?
    # :ditto:
    abstract def number! : Int32
    # :ditto:
    abstract def number? : Int32?
    # :ditto:
    abstract def number=(value : Int32)
  end

  # ServiceBackendPort is the service port being referenced.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    number: {key: "number", accessor: "number", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::ServiceBackendPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::ServiceBackendPort
    k8s_object_accessor("name", name : String, true, false, "Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".")
    k8s_object_accessor("number", number : Int32, true, false, "Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".")

    def initialize(*, name : String? = nil, number : Int32? = nil)
      super()
      self.["name"] = name
      self.["number"] = number
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "number", accessor: "number", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
