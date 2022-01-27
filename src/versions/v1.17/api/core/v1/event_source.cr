# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EventSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EventSource`.
  module Types::Api::Core::V1::EventSource
    # Component from which the event is generated.
    abstract def component : String?
    # :ditto:
    abstract def component! : String
    # :ditto:
    abstract def component? : String?
    # :ditto:
    abstract def component=(value : String)
    # Node name on which the event is generated.
    abstract def host : String?
    # :ditto:
    abstract def host! : String
    # :ditto:
    abstract def host? : String?
    # :ditto:
    abstract def host=(value : String)
  end

  # EventSource contains information for an event.
  @[::K8S::Properties(
    component: {key: "component", accessor: "component", kind: "String", nilable: true, default: nil, read_only: false, description: "Component from which the event is generated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host: {key: "host", accessor: "host", kind: "String", nilable: true, default: nil, read_only: false, description: "Node name on which the event is generated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EventSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EventSource
    k8s_object_accessor("component", component : String, true, false, "Component from which the event is generated.")
    k8s_object_accessor("host", host : String, true, false, "Node name on which the event is generated.")

    def initialize(*, component : String? = nil, host : String? = nil)
      super()
      self.["component"] = component
      self.["host"] = host
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "component", accessor: "component", nilable: true, read_only: false, default: nil, kind: String},
      {key: "host", accessor: "host", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
