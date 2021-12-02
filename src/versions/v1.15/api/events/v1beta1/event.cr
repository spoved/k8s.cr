# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "Event", version: "v1beta1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: true,
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
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", toplevel: true,
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
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Events::V1beta1::Event < ::K8S::Kubernetes::Resource
    getter api_version : String = "events/v1beta1"
    getter kind : String = "Event"
    # What action was [taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)
    property action : String | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    property deprecated_count : Int32 | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    property deprecated_first_timestamp : Time | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    property deprecated_last_timestamp : Time | Nil

    # Deprecated field assuring backward compatibility with core.v1 Event type
    property deprecated_source : Api::Core::V1::EventSource | Nil

    # Required. Time when this Event was first observed.
    property event_time : Time

    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    property note : String | Nil

    # Why the action was taken.
    property reason : String | Nil

    # The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    property regarding : Api::Core::V1::ObjectReference | Nil

    # Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    property related : Api::Core::V1::ObjectReference | Nil

    # Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)
    property reporting_controller : String | Nil

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    property reporting_instance : String | Nil

    # Data about the Event series this event represents or nil if it's a singleton Event.
    property series : Api::Events::V1beta1::EventSeries | Nil

    # Type of this event (Normal, Warning), new types could be added in the future.
    property type : String | Nil

    ::YAML.mapping({
      api_version:                {type: String, default: "events/v1beta1", key: "apiVersion", setter: false},
      kind:                       {type: String, default: "Event", key: "kind", setter: false},
      action:                     {type: String, nilable: true, key: "action", getter: false, setter: false},
      deprecated_count:           {type: Int32, nilable: true, key: "deprecatedCount", getter: false, setter: false},
      deprecated_first_timestamp: {type: Time, nilable: true, key: "deprecatedFirstTimestamp", getter: false, setter: false},
      deprecated_last_timestamp:  {type: Time, nilable: true, key: "deprecatedLastTimestamp", getter: false, setter: false},
      deprecated_source:          {type: Api::Core::V1::EventSource, nilable: true, key: "deprecatedSource", getter: false, setter: false},
      event_time:                 {type: Time, nilable: false, key: "eventTime", getter: false, setter: false},
      metadata:                   {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      note:                       {type: String, nilable: true, key: "note", getter: false, setter: false},
      reason:                     {type: String, nilable: true, key: "reason", getter: false, setter: false},
      regarding:                  {type: Api::Core::V1::ObjectReference, nilable: true, key: "regarding", getter: false, setter: false},
      related:                    {type: Api::Core::V1::ObjectReference, nilable: true, key: "related", getter: false, setter: false},
      reporting_controller:       {type: String, nilable: true, key: "reportingController", getter: false, setter: false},
      reporting_instance:         {type: String, nilable: true, key: "reportingInstance", getter: false, setter: false},
      series:                     {type: Api::Events::V1beta1::EventSeries, nilable: true, key: "series", getter: false, setter: false},
      type:                       {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:                {type: String, default: "events/v1beta1", key: "apiVersion", setter: false},
      kind:                       {type: String, default: "Event", key: "kind", setter: false},
      action:                     {type: String, nilable: true, key: "action", getter: false, setter: false},
      deprecated_count:           {type: Int32, nilable: true, key: "deprecatedCount", getter: false, setter: false},
      deprecated_first_timestamp: {type: Time, nilable: true, key: "deprecatedFirstTimestamp", getter: false, setter: false},
      deprecated_last_timestamp:  {type: Time, nilable: true, key: "deprecatedLastTimestamp", getter: false, setter: false},
      deprecated_source:          {type: Api::Core::V1::EventSource, nilable: true, key: "deprecatedSource", getter: false, setter: false},
      event_time:                 {type: Time, nilable: false, key: "eventTime", getter: false, setter: false},
      metadata:                   {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      note:                       {type: String, nilable: true, key: "note", getter: false, setter: false},
      reason:                     {type: String, nilable: true, key: "reason", getter: false, setter: false},
      regarding:                  {type: Api::Core::V1::ObjectReference, nilable: true, key: "regarding", getter: false, setter: false},
      related:                    {type: Api::Core::V1::ObjectReference, nilable: true, key: "related", getter: false, setter: false},
      reporting_controller:       {type: String, nilable: true, key: "reportingController", getter: false, setter: false},
      reporting_instance:         {type: String, nilable: true, key: "reportingInstance", getter: false, setter: false},
      series:                     {type: Api::Events::V1beta1::EventSeries, nilable: true, key: "series", getter: false, setter: false},
      type:                       {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @event_time : Time, @action : String | Nil = nil, @deprecated_count : Int32 | Nil = nil, @deprecated_first_timestamp : Time | Nil = nil, @deprecated_last_timestamp : Time | Nil = nil, @deprecated_source : Api::Core::V1::EventSource | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @note : String | Nil = nil, @reason : String | Nil = nil, @regarding : Api::Core::V1::ObjectReference | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_controller : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Events::V1beta1::EventSeries | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::Events::V1beta1
    alias Event = ::K8S::Api::Events::V1beta1::Event
  end
end
