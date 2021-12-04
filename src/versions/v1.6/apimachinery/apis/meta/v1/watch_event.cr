# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Event represents a single event to a watched resource.
  class Apimachinery::Apis::Meta::V1::WatchEvent
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    property object : Apimachinery::Runtime::RawExtension

    property type : String

    ::YAML.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object", getter: false, setter: false},
      type:   {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object", getter: false, setter: false},
      type:   {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @object : Apimachinery::Runtime::RawExtension, @type : String)
    end
  end
end
