# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A list of ephemeral containers used with the Pod ephemeralcontainers subresource.
  @[::K8S::GroupVersionKind(group: "", kind: "EphemeralContainers", version: "v1", full: "io.k8s.api.core.v1.EphemeralContainers")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    ephemeral_containers: {type: Array(Api::Core::V1::EphemeralContainer), nilable: false, key: "ephemeralContainers", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
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
    @[::JSON::Field(key: "ephemeralContainers")]
    @[::YAML::Field(key: "ephemeralContainers")]
    property ephemeral_containers : Array(Api::Core::V1::EphemeralContainer)

    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @ephemeral_containers : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::V1
    alias EphemeralContainers = ::K8S::Api::Core::V1::EphemeralContainers
  end
end
