# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/event_source"
require "../../core/v1/object_reference"
require "./event_series"

::K8S::Kubernetes::Resource.define_resource("events.k8s.io", "v1", "Event",
  namespace: "::K8S::Api::Events::V1",
  properties: [

    {name: "action", kind: String, key: "action", nilable: true, read_only: false, description: "action is what action was [taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.)"},
    {name: "deprecated_count", kind: Int32, key: "deprecatedCount", nilable: true, read_only: false, description: "deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type."},
    {name: "deprecated_first_timestamp", kind: ::Time, key: "deprecatedFirstTimestamp", nilable: true, read_only: false, description: "deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type."},
    {name: "deprecated_last_timestamp", kind: ::Time, key: "deprecatedLastTimestamp", nilable: true, read_only: false, description: "deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type."},
    {name: "deprecated_source", kind: ::K8S::Api::Core::V1::EventSource, key: "deprecatedSource", nilable: true, read_only: false, description: "deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type."},
    {name: "event_time", kind: ::Time, key: "eventTime", nilable: true, read_only: false, description: "eventTime is the time when this Event was first observed. It is required."},
    {name: "note", kind: String, key: "note", nilable: true, read_only: false, description: "note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "reason is why the action was taken. It is human-readable. This field can have at most 128 characters."},
    {name: "regarding", kind: ::K8S::Api::Core::V1::ObjectReference, key: "regarding", nilable: true, read_only: false, description: "regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object."},
    {name: "related", kind: ::K8S::Api::Core::V1::ObjectReference, key: "related", nilable: true, read_only: false, description: "related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object."},
    {name: "reporting_controller", kind: String, key: "reportingController", nilable: true, read_only: false, description: "reportingController is the name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)"},
    {name: "reporting_instance", kind: String, key: "reportingInstance", nilable: true, read_only: false, description: "reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters."},
    {name: "series", kind: ::K8S::Api::Events::V1::EventSeries, key: "series", nilable: true, read_only: false, description: "series is data about the Event series this event represents or nil if it's a singleton Event."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable."},

  ],
  description: "Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.",
)
