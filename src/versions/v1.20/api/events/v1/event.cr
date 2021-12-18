# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "Event", version: "v1", full: "io.k8s.api.events.v1.Event")]
  @[::K8S::Properties(
    action: {type: String, nilable: true, key: "action", getter: false, setter: false},
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    deprecated_count: {type: Int32, nilable: true, key: "deprecatedCount", getter: false, setter: false},
    deprecated_first_timestamp: {type: Time, nilable: true, key: "deprecatedFirstTimestamp", getter: false, setter: false},
    deprecated_last_timestamp: {type: Time, nilable: true, key: "deprecatedLastTimestamp", getter: false, setter: false},
    deprecated_source: {type: Api::Core::V1::EventSource, nilable: true, key: "deprecatedSource", getter: false, setter: false},
    event_time: {type: Time, nilable: true, key: "eventTime", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata", getter: false, setter: false},
    note: {type: String, nilable: true, key: "note", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    regarding: {type: Api::Core::V1::ObjectReference, nilable: true, key: "regarding", getter: false, setter: false},
    related: {type: Api::Core::V1::ObjectReference, nilable: true, key: "related", getter: false, setter: false},
    reporting_controller: {type: String, nilable: true, key: "reportingController", getter: false, setter: false},
    reporting_instance: {type: String, nilable: true, key: "reportingInstance", getter: false, setter: false},
    series: {type: Api::Events::V1::EventSeries, nilable: true, key: "series", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events", toplevel: true,
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
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events", toplevel: true,
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
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/events.k8s.io/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Events::V1::Event < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "events/v1"
    getter kind : String = "Event"
    # action is what action was [taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.)
    @[::JSON::Field(key: "action", emit_null: false)]
    @[::YAML::Field(key: "action", emit_null: false)]
    property action : String | Nil

    # deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedCount", emit_null: false)]
    @[::YAML::Field(key: "deprecatedCount", emit_null: false)]
    property deprecated_count : Int32 | Nil

    # deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedFirstTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "deprecatedFirstTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    property deprecated_first_timestamp : Time | Nil

    # deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedLastTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "deprecatedLastTimestamp", emit_null: false, converter: K8S::TimeFormat.new)]
    property deprecated_last_timestamp : Time | Nil

    # deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
    @[::JSON::Field(key: "deprecatedSource", emit_null: false)]
    @[::YAML::Field(key: "deprecatedSource", emit_null: false)]
    property deprecated_source : Api::Core::V1::EventSource | Nil

    # eventTime is the time when this Event was first observed. It is required.
    @[::JSON::Field(key: "eventTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "eventTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property event_time : Time | Nil

    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?
    # note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    @[::JSON::Field(key: "note", emit_null: false)]
    @[::YAML::Field(key: "note", emit_null: false)]
    property note : String | Nil

    # reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    @[::JSON::Field(key: "regarding", emit_null: false)]
    @[::YAML::Field(key: "regarding", emit_null: false)]
    property regarding : Api::Core::V1::ObjectReference | Nil

    # related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    @[::JSON::Field(key: "related", emit_null: false)]
    @[::YAML::Field(key: "related", emit_null: false)]
    property related : Api::Core::V1::ObjectReference | Nil

    # reportingController is the name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)
    @[::JSON::Field(key: "reportingController", emit_null: false)]
    @[::YAML::Field(key: "reportingController", emit_null: false)]
    property reporting_controller : String | Nil

    # reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
    @[::JSON::Field(key: "reportingInstance", emit_null: false)]
    @[::YAML::Field(key: "reportingInstance", emit_null: false)]
    property reporting_instance : String | Nil

    # series is data about the Event series this event represents or nil if it's a singleton Event.
    @[::JSON::Field(key: "series", emit_null: false)]
    @[::YAML::Field(key: "series", emit_null: false)]
    property series : Api::Events::V1::EventSeries | Nil

    # type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, @action : String | Nil = nil, @deprecated_count : Int32 | Nil = nil, @deprecated_first_timestamp : Time | Nil = nil, @deprecated_last_timestamp : Time | Nil = nil, @deprecated_source : Api::Core::V1::EventSource | Nil = nil, @event_time : Time | Nil = nil, @note : String | Nil = nil, @reason : String | Nil = nil, @regarding : Api::Core::V1::ObjectReference | Nil = nil, @related : Api::Core::V1::ObjectReference | Nil = nil, @reporting_controller : String | Nil = nil, @reporting_instance : String | Nil = nil, @series : Api::Events::V1::EventSeries | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::Events::V1
    alias Event = ::K8S::Api::Events::V1::Event
  end
end
