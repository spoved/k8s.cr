# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # A list of ephemeral containers used with the Pod ephemeralcontainers subresource.
  @[::K8S::GroupVersionKind(group: "", kind: "EphemeralContainers", version: "v1")]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/pods/{name}/ephemeralcontainers", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/pods/{name}/ephemeralcontainers", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/pods/{name}/ephemeralcontainers", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  class Api::Core::V1::EphemeralContainers < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "v1"
    getter kind : String = "EphemeralContainers"
    # A list of ephemeral containers associated with this pod. New ephemeral containers may be appended to this list, but existing ephemeral containers may not be removed or modified.
    property ephemeral_containers : Array(Api::Core::V1::EphemeralContainer)

    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    ::YAML.mapping({
      api_version:          {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:                 {type: String, default: "EphemeralContainers", key: "kind", setter: false},
      ephemeral_containers: {type: Array(Api::Core::V1::EphemeralContainer), nilable: false, key: "ephemeralContainers", getter: false, setter: false},
      metadata:             {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:          {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:                 {type: String, default: "EphemeralContainers", key: "kind", setter: false},
      ephemeral_containers: {type: Array(Api::Core::V1::EphemeralContainer), nilable: false, key: "ephemeralContainers", getter: false, setter: false},
      metadata:             {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @ephemeral_containers : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::V1
    alias EphemeralContainers = ::K8S::Api::Core::V1::EphemeralContainers
  end
end
