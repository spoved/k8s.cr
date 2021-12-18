# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Event is a report of an event somewhere in the cluster.
  @[::K8S::GroupVersionKind(group: "", kind: "Event", version: "v1", full: "io.k8s.api.core.v1.Event")]
  @[::K8S::Properties(
    action: {type: String, nilable: true, key: "action", getter: false, setter: false},
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    count: {type: Int32, nilable: true, key: "count", getter: false, setter: false},
    event_time: {type: Time, nilable: true, key: "eventTime", getter: false, setter: false},
    first_timestamp: {type: Time, nilable: true, key: "firstTimestamp", getter: false, setter: false},
    involved_object: {type: Api::Core::V1::ObjectReference, nilable: false, key: "involvedObject", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    last_timestamp: {type: Time, nilable: true, key: "lastTimestamp", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    related: {type: Api::Core::V1::ObjectReference, nilable: true, key: "related", getter: false, setter: false},
    reporting_component: {type: String, nilable: true, key: "reportingComponent", getter: false, setter: false},
    reporting_instance: {type: String, nilable: true, key: "reportingInstance", getter: false, setter: false},
    series: {type: Api::Core::V1::EventSeries, nilable: true, key: "series", getter: false, setter: false},
    source: {type: Api::Core::V1::EventSource, nilable: true, key: "source", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Core::V1::Event < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "v1"
    getter kind : String = "Event"
    # What action was [taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)
    @[::JSON::Field(key: "action", emit_null: false)]
    @[::YAML::Field(key: "action", emit_null: false)]
    property action : String | Nil

    # The number of times this event has occurred.
    @[::JSON::Field(key: "count", emit_null: false)]
    @[::YAML::Field(key: "count", emit_null: false)]
    property count : Int32 | Nil

    # Time when this Event was first observed.
    @[::JSON::Field(key: "eventTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "eventTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property event_time : Time | Nil

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    @[::JSON::Field(key: "firstTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "firstTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    property first_timestamp : Time | Nil

    # The object that this event is about.
    @[::JSON::Field(key: "involvedObject", emit_null: true)]
    @[::YAML::Field(key: "involvedObject", emit_null: true)]
    property involved_object : Api::Core::V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    @[::JSON::Field(key: "lastTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_timestamp : Time | Nil

    # A human-readable description of the status of this operation.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?
    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Optional secondary object for more complex actions.
    @[::JSON::Field(key: "related", emit_null: false)]
    @[::YAML::Field(key: "related", emit_null: false)]
    property related : Api::Core::V1::ObjectReference | Nil

    # Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)
    @[::JSON::Field(key: "reportingComponent", emit_null: false)]
    @[::YAML::Field(key: "reportingComponent", emit_null: false)]
    property reporting_component : String | Nil

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    @[::JSON::Field(key: "reportingInstance", emit_null: false)]
    @[::YAML::Field(key: "reportingInstance", emit_null: false)]
    property reporting_instance : String | Nil

    # Data about the Event series this event represents or nil if it's a singleton Event.
    @[::JSON::Field(key: "series", emit_null: false)]
    @[::YAML::Field(key: "series", emit_null: false)]
    property series : Api::Core::V1::EventSeries | Nil

    # The component reporting this event. Should be a short machine understandable string.
    @[::JSON::Field(key: "source", emit_null: false)]
    @[::YAML::Field(key: "source", emit_null: false)]
    property source : Api::Core::V1::EventSource | Nil

    # Type of this event (Normal, Warning), new types could be added in the future
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @involved_object : Api::Core::V1::ObjectReference, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, @action : String | Nil = nil, @count : Int32 | Nil = nil, @event_time : Time | Nil = nil, @first_timestamp : Time | Nil = nil, @last_timestamp : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_component : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Core::V1::EventSeries | Nil = nil, @source : Api::Core::V1::EventSource | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Event = ::K8S::Api::Core::V1::Event
  end
end
