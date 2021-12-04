# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # An APIVersion represents a single concrete version of an object model.
  class Kubernetes::Apis::Extensions::V1beta1::APIVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of this version (e.g. 'v1').
    property name : String | Nil

    ::YAML.mapping({
      name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
