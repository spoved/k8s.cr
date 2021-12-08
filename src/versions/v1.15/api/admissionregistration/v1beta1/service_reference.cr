# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceReference holds a reference to Service.legacy.k8s.io
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    path: {type: String, nilable: true, key: "path", getter: false, setter: false},
    port: {type: Int32, nilable: true, key: "port", getter: false, setter: false},
  )]
  class Api::Admissionregistration::V1beta1::ServiceReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the name of the service. Required
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # `namespace` is the namespace of the service. Required
    @[::JSON::Field(key: "namespace", emit_null: true)]
    @[::YAML::Field(key: "namespace", emit_null: true)]
    property namespace : String

    # `path` is an optional URL path which will be sent in any request to this service.
    @[::JSON::Field(key: "path", emit_null: false)]
    @[::YAML::Field(key: "path", emit_null: false)]
    property path : String | Nil

    # If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    @[::JSON::Field(key: "port", emit_null: false)]
    @[::YAML::Field(key: "port", emit_null: false)]
    property port : Int32 | Nil

    def initialize(*, @name : String, @namespace : String, @path : String | Nil = nil, @port : Int32 | Nil = nil)
    end
  end
end
