# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # DaemonEndpoint contains information about a single Daemon endpoint.
  class Kubernetes::Api::V1::DaemonEndpoint
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Port number of the given endpoint.
    property port : Int32

    ::YAML.mapping({
      port: {type: Int32, nilable: false, key: "Port", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      port: {type: Int32, nilable: false, key: "Port", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32)
    end
  end
end
