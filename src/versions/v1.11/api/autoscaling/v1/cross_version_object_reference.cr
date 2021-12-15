# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Autoscaling::V1::CrossVersionObjectReference
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # API version of the referent
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # Kind of the referent; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds"](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds")
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @kind : String, @name : String, @api_version : String | Nil = nil)
    end
  end
end
