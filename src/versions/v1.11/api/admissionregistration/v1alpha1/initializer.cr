# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Initializer describes the name and the failure policy of an initializer, and what resources it applies to.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    rules: {type: Array(Api::Admissionregistration::V1alpha1::Rule), nilable: true, key: "rules", getter: false, setter: false},
  )]
  class Api::Admissionregistration::V1alpha1::Initializer
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)
    @[::JSON::Field(key: "rules", emit_null: false)]
    @[::YAML::Field(key: "rules", emit_null: false)]
    property rules : Array(Api::Admissionregistration::V1alpha1::Rule) | Nil

    def initialize(*, @name : String, @rules : Array | Nil = nil)
    end
  end
end
