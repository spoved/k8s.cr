# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressBackend describes all endpoints for a given service and port.
  @[::K8S::Properties(
    service_name: {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
    service_port: {type: Int32 | String, nilable: false, key: "servicePort", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::IngressBackend
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Specifies the name of the referenced service.
    @[::JSON::Field(key: "serviceName", emit_null: true)]
    @[::YAML::Field(key: "serviceName", emit_null: true)]
    property service_name : String

    # Specifies the port of the referenced service.
    @[::JSON::Field(key: "servicePort", emit_null: true)]
    @[::YAML::Field(key: "servicePort", emit_null: true)]
    property service_port : Int32 | String

    def initialize(*, @service_name : String, @service_port : Int32 | String)
    end
  end
end
