# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceReference holds a reference to Service.legacy.k8s.io
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name is the name of the service
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Namespace is the namespace of the service
    @[::JSON::Field(key: "namespace", emit_null: false)]
    @[::YAML::Field(key: "namespace", emit_null: false)]
    property namespace : String | Nil

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
