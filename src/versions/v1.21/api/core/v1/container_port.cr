# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerPort represents a network port in a single container.
  @[::K8S::Properties(
    container_port: {type: Int32, nilable: false, key: "containerPort", getter: false, setter: false},
    host_ip: {type: String, nilable: true, key: "hostIP", getter: false, setter: false},
    host_port: {type: Int32, nilable: true, key: "hostPort", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerPort
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
    @[::JSON::Field(key: "containerPort", emit_null: true)]
    @[::YAML::Field(key: "containerPort", emit_null: true)]
    property container_port : Int32

    # What host IP to bind the external port to.
    @[::JSON::Field(key: "hostIP", emit_null: false)]
    @[::YAML::Field(key: "hostIP", emit_null: false)]
    property host_ip : String | Nil

    # Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
    @[::JSON::Field(key: "hostPort", emit_null: false)]
    @[::YAML::Field(key: "hostPort", emit_null: false)]
    property host_port : Int32 | Nil

    # If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
    @[::JSON::Field(key: "protocol", emit_null: false)]
    @[::YAML::Field(key: "protocol", emit_null: false)]
    property protocol : String | Nil

    def initialize(*, @container_port : Int32, @host_ip : String | Nil = nil, @host_port : Int32 | Nil = nil, @name : String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
