# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  @[::K8S::GroupVersionKind(group: "", kind: "APIGroupList", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroupList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    groups: {type: Array(Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: "groups", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::APIGroupList
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # groups is a list of APIGroup.
    @[::JSON::Field(key: "groups", emit_null: true)]
    @[::YAML::Field(key: "groups", emit_null: true)]
    property groups : Array(Apimachinery::Apis::Meta::V1::APIGroup)

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    def initialize(*, @groups : Array, @api_version : String | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
