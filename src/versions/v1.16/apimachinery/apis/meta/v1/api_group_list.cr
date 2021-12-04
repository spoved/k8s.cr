# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  @[::K8S::GroupVersionKind(group: "", kind: "APIGroupList", version: "v1")]
  class Apimachinery::Apis::Meta::V1::APIGroupList
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)
    property api_version : String | Nil

    # groups is a list of APIGroup.
    property groups : Array(Apimachinery::Apis::Meta::V1::APIGroup)

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    property kind : String | Nil

    ::YAML.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      groups:      {type: Array(Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: "groups", getter: false, setter: false},
      kind:        {type: String, nilable: true, key: "kind", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      groups:      {type: Array(Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: "groups", getter: false, setter: false},
      kind:        {type: String, nilable: true, key: "kind", getter: false, setter: false},
    }, true)

    def initialize(*, @groups : Array, @api_version : String | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
