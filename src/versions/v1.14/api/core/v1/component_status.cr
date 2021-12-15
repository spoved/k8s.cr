# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ComponentStatus (and ComponentStatusList) holds the cluster validation info.
  @[::K8S::GroupVersionKind(group: "", kind: "ComponentStatus", version: "v1", full: "io.k8s.api.core.v1.ComponentStatus")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    conditions: {type: Array(Api::Core::V1::ComponentCondition), nilable: true, key: "conditions", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/componentstatuses/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Core::V1::ComponentStatus < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "v1"
    getter kind : String = "ComponentStatus"
    # List of component conditions observed
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Core::V1::ComponentCondition) | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @conditions : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::V1
    alias ComponentStatus = ::K8S::Api::Core::V1::ComponentStatus
  end
end
