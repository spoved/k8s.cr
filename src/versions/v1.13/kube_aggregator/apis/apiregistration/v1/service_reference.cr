# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference; end

module K8S
  # Namespace holding the types for `KubeAggregator::Apis::Apiregistration::V1::ServiceReference`.
  module Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    # Name is the name of the service
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace is the namespace of the service
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
  end

  # ServiceReference holds a reference to Service.legacy.k8s.io
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is the name of the service", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace is the namespace of the service", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::ServiceReference < ::K8S::GenericObject
    include ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    k8s_object_accessor("name", name : String, true, false, "Name is the name of the service")
    k8s_object_accessor("namespace", namespace : String, true, false, "Namespace is the namespace of the service")

    def initialize(*, name : String? = nil, namespace : String? = nil)
      super()
      self.["name"] = name
      self.["namespace"] = namespace
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
