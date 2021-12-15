# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to [.../pods/<pod name>/evictions.](.../pods/<pod name>/evictions.)
  @[::K8S::GroupVersionKind(group: "policy", kind: "Eviction", version: "v1beta1", full: "io.k8s.api.policy.v1beta1.Eviction")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    delete_options: {type: Apimachinery::Apis::Meta::V1::DeleteOptions, nilable: true, key: "deleteOptions", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/pods/{name}/eviction", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Policy::V1beta1::Eviction < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "policy/v1beta1"
    getter kind : String = "Eviction"
    # DeleteOptions may be provided
    @[::JSON::Field(key: "deleteOptions", emit_null: false)]
    @[::YAML::Field(key: "deleteOptions", emit_null: false)]
    property delete_options : Apimachinery::Apis::Meta::V1::DeleteOptions | Nil

    # ObjectMeta describes the pod that is being evicted.
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @delete_options : Apimachinery::Apis::Meta::V1::DeleteOptions | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias Eviction = ::K8S::Api::Policy::V1beta1::Eviction
  end
end
