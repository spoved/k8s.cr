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
    include ::YAML::Serializable

    # API version of the referent
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind of the referent; More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds")
    property kind : String

    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    def initialize(*, @kind : String, @name : String, @api_version : String | Nil = nil)
    end
  end
end
