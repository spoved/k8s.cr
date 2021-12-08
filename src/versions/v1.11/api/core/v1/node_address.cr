# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeAddress contains information for the node's address.
  @[::K8S::Properties(
    address: {type: String, nilable: false, key: "address", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeAddress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The node address.
    @[::JSON::Field(key: "address", emit_null: true)]
    @[::YAML::Field(key: "address", emit_null: true)]
    property address : String

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @address : String, @type : String)
    end
  end
end
