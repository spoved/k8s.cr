# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # EventList is a list of Event objects.
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "EventList", version: "v1beta1")]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/events.k8s.io/v1beta1/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "event_time", type: Time},
           {name: "action", type: String | Nil, default: nil},
           {name: "deprecated_count", type: Int32 | Nil, default: nil},
           {name: "deprecated_first_timestamp", type: Time | Nil, default: nil},
           {name: "deprecated_last_timestamp", type: Time | Nil, default: nil},
           {name: "deprecated_source", type: Api::Core::V1::EventSource | Nil, default: nil},
           {name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta | Nil, default: nil},
           {name: "note", type: String | Nil, default: nil},
           {name: "reason", type: String | Nil, default: nil},
           {name: "regarding", type: Api::Core::V1::ObjectReference | Nil, default: nil},
           {name: "related", type: Api::Core::V1::ObjectReference | Nil, default: nil},
           {name: "reporting_controller", type: String | Nil, default: nil},
           {name: "reporting_instance", type: String | Nil, default: nil},
           {name: "series", type: Api::Events::V1beta1::EventSeries | Nil, default: nil},
           {name: "type", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
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
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  class Api::Events::V1beta1::EventList < ::K8S::Kubernetes::ResourceList(Api::Events::V1beta1::Event)
    include ::K8S::Kubernetes::Resource::List
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "events/v1beta1"
    getter kind : String = "List"
    # Items is a list of schema objects.
    property items : Array(Api::Events::V1beta1::Event)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "events/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Events::V1beta1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "events/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Events::V1beta1::Event), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
