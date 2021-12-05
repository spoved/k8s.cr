# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "HorizontalPodAutoscalerList", version: "v2beta2", full: "io.k8s.api.autoscaling.v2beta2.HorizontalPodAutoscalerList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    items: {type: Array(Api::Autoscaling::V2beta2::HorizontalPodAutoscaler), nilable: false, key: "items", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/autoscaling/v2beta2/horizontalpodautoscalers", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/autoscaling/v2beta2/namespaces/{namespace}/horizontalpodautoscalers", toplevel: false,
    args: [{name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta | Nil, default: nil},
           {name: "spec", type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerSpec | Nil, default: nil},
           {name: "status", type: Api::Autoscaling::V2beta2::HorizontalPodAutoscalerStatus | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/autoscaling/v2beta2/namespaces/{namespace}/horizontalpodautoscalers", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/autoscaling/v2beta2/namespaces/{namespace}/horizontalpodautoscalers", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  class Api::Autoscaling::V2beta2::HorizontalPodAutoscalerList < ::K8S::Kubernetes::ResourceList(Api::Autoscaling::V2beta2::HorizontalPodAutoscaler)
    include ::K8S::Kubernetes::Resource::List
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "autoscaling/v2beta2"
    getter kind : String = "List"
    # items is the list of horizontal pod autoscaler objects.
    property items : Array(Api::Autoscaling::V2beta2::HorizontalPodAutoscaler)

    # metadata is the standard list metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
