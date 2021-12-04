# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  class Api::Core::V1::PortStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    property error : String | Nil

    # Port is the port number of the service port of which status is recorded here
    property port : Int32

    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    property protocol : String

    ::YAML.mapping({
      error:    {type: String, nilable: true, key: "error", getter: false, setter: false},
      port:     {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: false, key: "protocol", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      error:    {type: String, nilable: true, key: "error", getter: false, setter: false},
      port:     {type: Int32, nilable: false, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: false, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32, @protocol : String, @error : String | Nil = nil)
    end
  end
end
