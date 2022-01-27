# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecretEnvSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SecretEnvSource`.
  module Types::Api::Core::V1::SecretEnvSource
    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Specify whether the Secret must be defined
    abstract def optional : ::Bool?
    # :ditto:
    abstract def optional! : ::Bool
    # :ditto:
    abstract def optional? : ::Bool?
    # :ditto:
    abstract def optional=(value : ::Bool)
  end

  # SecretEnvSource selects a Secret to populate the environment variables with.
  #
  # The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    optional: {key: "optional", accessor: "optional", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify whether the Secret must be defined", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SecretEnvSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::SecretEnvSource
    k8s_object_accessor("name", name : String, true, false, "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)")
    k8s_object_accessor("optional", optional : ::Bool, true, false, "Specify whether the Secret must be defined")

    def initialize(*, name : String? = nil, optional : ::Bool? = nil)
      super()
      self.["name"] = name
      self.["optional"] = optional
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "optional", accessor: "optional", nilable: true, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
