# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventList is a list of events.
  @[::K8S::GroupVersionKind(group: "", kind: "EventList", version: "v1", full: "io.k8s.api.core.v1.EventList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    items: {type: Array(Api::Core::V1::Event), nilable: false, key: "items", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "involved_object", type: Api::Core::V1::ObjectReference},
           {name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta},
           {name: "action", type: String | Nil, default: nil},
           {name: "count", type: Int32 | Nil, default: nil},
           {name: "event_time", type: Time | Nil, default: nil},
           {name: "first_timestamp", type: Time | Nil, default: nil},
           {name: "last_timestamp", type: Time | Nil, default: nil},
           {name: "message", type: String | Nil, default: nil},
           {name: "reason", type: String | Nil, default: nil},
           {name: "related", type: Api::Core::V1::ObjectReference | Nil, default: nil},
           {name: "reporting_component", type: String | Nil, default: nil},
           {name: "reporting_instance", type: String | Nil, default: nil},
           {name: "series", type: Api::Core::V1::EventSeries | Nil, default: nil},
           {name: "source", type: Api::Core::V1::EventSource | Nil, default: nil},
           {name: "type", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
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
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  class Api::Core::V1::EventList < ::K8S::Kubernetes::ResourceList(Api::Core::V1::Event)
    include ::K8S::Kubernetes::Resource::List
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "v1"
    getter kind : String = "List"

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
