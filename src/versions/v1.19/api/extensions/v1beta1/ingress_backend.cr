# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressBackend describes all endpoints for a given service and port.
  @[::K8S::Properties(
    resource: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "resource", getter: false, setter: false},
    service_name: {type: String, nilable: true, key: "serviceName", getter: false, setter: false},
    service_port: {type: Int32 | String, nilable: true, key: "servicePort", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::IngressBackend
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
    @[::JSON::Field(key: "resource", emit_null: false)]
    @[::YAML::Field(key: "resource", emit_null: false)]
    property resource : Api::Core::V1::TypedLocalObjectReference | Nil

    # Specifies the name of the referenced service.
    @[::JSON::Field(key: "serviceName", emit_null: false)]
    @[::YAML::Field(key: "serviceName", emit_null: false)]
    property service_name : String | Nil

    # Specifies the port of the referenced service.
    @[::JSON::Field(key: "servicePort", emit_null: false)]
    @[::YAML::Field(key: "servicePort", emit_null: false)]
    property service_port : Int32 | String | Nil

    def initialize(*, @resource : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @service_name : String | Nil = nil, @service_port : Int32 | String | Nil = nil)
    end
  end
end
