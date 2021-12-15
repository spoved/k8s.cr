# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressServiceBackend references a Kubernetes Service as a Backend.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    port: {type: Api::Networking::V1::ServiceBackendPort, nilable: true, key: "port", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressServiceBackend
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name is the referenced service. The service must exist in the same namespace as the Ingress object.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
    @[::JSON::Field(key: "port", emit_null: false)]
    @[::YAML::Field(key: "port", emit_null: false)]
    property port : Api::Networking::V1::ServiceBackendPort | Nil

    def initialize(*, @name : String, @port : Api::Networking::V1::ServiceBackendPort | Nil = nil)
    end
  end
end
