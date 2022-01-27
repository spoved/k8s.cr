# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecretReference; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SecretReference`.
  module Types::Api::Core::V1::SecretReference
    # Name is unique within a namespace to reference a secret resource.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace defines the space within which the secret name must be unique.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
  end

  # SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is unique within a namespace to reference a secret resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace defines the space within which the secret name must be unique.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SecretReference < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::SecretReference
    k8s_object_accessor("name", name : String, true, false, "Name is unique within a namespace to reference a secret resource.")
    k8s_object_accessor("namespace", namespace : String, true, false, "Namespace defines the space within which the secret name must be unique.")

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
