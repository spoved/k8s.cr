# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Rule is a tuple of APIGroups, APIVersion, and Resources.It is recommended to make sure that all the tuple expansions are valid.
  @[::K8S::Properties(
    api_groups: {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
    api_versions: {type: Array(String), nilable: true, key: "apiVersions", getter: false, setter: false},
    resources: {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
  )]
  class Api::Admissionregistration::V1alpha1::Rule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    @[::JSON::Field(key: "apiGroups", emit_null: false)]
    @[::YAML::Field(key: "apiGroups", emit_null: false)]
    property api_groups : Array(String) | Nil

    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    @[::JSON::Field(key: "apiVersions", emit_null: false)]
    @[::YAML::Field(key: "apiVersions", emit_null: false)]
    property api_versions : Array(String) | Nil

    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
    @[::JSON::Field(key: "resources", emit_null: false)]
    @[::YAML::Field(key: "resources", emit_null: false)]
    property resources : Array(String) | Nil

    def initialize(*, @api_groups : Array | Nil = nil, @api_versions : Array | Nil = nil, @resources : Array | Nil = nil)
    end
  end
end
