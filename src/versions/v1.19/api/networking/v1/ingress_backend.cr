# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressBackend describes all endpoints for a given service and port.
  @[::K8S::Properties(
    resource: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
    service: {type: Api::Networking::V1::IngressServiceBackend, nilable: true, key: "service", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressBackend
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
    @[::JSON::Field(key: "resource", emit_null: false)]
    @[::YAML::Field(key: "resource", emit_null: false)]
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
    @[::JSON::Field(key: "service", emit_null: false)]
    @[::YAML::Field(key: "service", emit_null: false)]
    property service : Api::Networking::V1::IngressServiceBackend | Nil

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service : Api::Networking::V1::IngressServiceBackend | Nil = nil)
    end
  end
end
