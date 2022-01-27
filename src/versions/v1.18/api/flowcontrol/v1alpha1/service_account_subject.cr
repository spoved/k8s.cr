# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::ServiceAccountSubject; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::ServiceAccountSubject`.
  module Types::Api::Flowcontrol::V1alpha1::ServiceAccountSubject
    # `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # `namespace` is the namespace of matching ServiceAccount objects. Required.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
  end

  # ServiceAccountSubject holds detailed information for service-account-kind subject.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "`name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: false, default: nil, read_only: false, description: "`namespace` is the namespace of matching ServiceAccount objects. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::ServiceAccountSubject < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::ServiceAccountSubject
    k8s_object_accessor("name", name : String, false, false, "`name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required.")
    k8s_object_accessor("namespace", namespace : String, false, false, "`namespace` is the namespace of matching ServiceAccount objects. Required.")

    def initialize(*, name : String? = nil, namespace : String? = nil)
      super()
      self.["name"] = name
      self.["namespace"] = namespace
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
