# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
  @[::K8S::GroupVersionKind(group: "", kind: "APIResourceList", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIResourceList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    group_version: {type: String, nilable: false, key: "groupVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    resources: {type: Array(Apimachinery::Apis::Meta::V1::APIResource), nilable: false, key: "resources", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::APIResourceList
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # groupVersion is the group and version this APIResourceList is for.
    @[::JSON::Field(key: "groupVersion", emit_null: true)]
    @[::YAML::Field(key: "groupVersion", emit_null: true)]
    property group_version : String

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # resources contains the name of the resources and if they are namespaced.
    @[::JSON::Field(key: "resources", emit_null: true)]
    @[::YAML::Field(key: "resources", emit_null: true)]
    property resources : Array(Apimachinery::Apis::Meta::V1::APIResource)

    def initialize(*, @group_version : String, @resources : Array(Apimachinery::Apis::Meta::V1::APIResource), @api_version : String | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
