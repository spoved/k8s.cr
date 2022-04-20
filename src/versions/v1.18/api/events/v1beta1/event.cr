# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/event_source"
require "../../core/v1/object_reference"
require "./event_series"

::K8S::Kubernetes::Resource.define_resource("events.k8s.io", "v1beta1", "Event",
  namespace: "::K8S::Api::Events::V1beta1",
  properties: [

    {name: "action", kind: String, key: "action", nilable: true, read_only: false, description: "What action was [taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)"},
    {name: "deprecated_count", kind: Int32, key: "deprecatedCount", nilable: true, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type"},
    {name: "deprecated_first_timestamp", kind: ::Time, key: "deprecatedFirstTimestamp", nilable: true, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type"},
    {name: "deprecated_last_timestamp", kind: ::Time, key: "deprecatedLastTimestamp", nilable: true, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type"},
    {name: "deprecated_source", kind: ::K8S::Api::Core::V1::EventSource, key: "deprecatedSource", nilable: true, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type"},
    {name: "event_time", kind: ::Time, key: "eventTime", nilable: true, read_only: false, description: "Required. Time when this Event was first observed."},
    {name: "note", kind: String, key: "note", nilable: true, read_only: false, description: "Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "Why the action was taken."},
    {name: "regarding", kind: ::K8S::Api::Core::V1::ObjectReference, key: "regarding", nilable: true, read_only: false, description: "The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object."},
    {name: "related", kind: ::K8S::Api::Core::V1::ObjectReference, key: "related", nilable: true, read_only: false, description: "Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object."},
    {name: "reporting_controller", kind: String, key: "reportingController", nilable: true, read_only: false, description: "Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)"},
    {name: "reporting_instance", kind: String, key: "reportingInstance", nilable: true, read_only: false, description: "ID of the controller instance, e.g. `kubelet-xyzf`."},
    {name: "series", kind: ::K8S::Api::Events::V1beta1::EventSeries, key: "series", nilable: true, read_only: false, description: "Data about the Event series this event represents or nil if it's a singleton Event."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type of this event (Normal, Warning), new types could be added in the future."},

  ],
  description: "Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.",
)
