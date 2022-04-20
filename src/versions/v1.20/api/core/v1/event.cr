# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./object_reference"
require "./event_series"
require "./event_source"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Event",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "action", kind: String, key: "action", nilable: true, read_only: false, description: "What action was [taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)"},
    {name: "count", kind: Int32, key: "count", nilable: true, read_only: false, description: "The number of times this event has occurred."},
    {name: "event_time", kind: ::Time, key: "eventTime", nilable: true, read_only: false, description: "Time when this Event was first observed."},
    {name: "first_timestamp", kind: ::Time, key: "firstTimestamp", nilable: true, read_only: false, description: "The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)"},
    {name: "involved_object", kind: ::K8S::Api::Core::V1::ObjectReference, key: "involvedObject", nilable: false, read_only: false, description: "The object that this event is about."},
    {name: "last_timestamp", kind: ::Time, key: "lastTimestamp", nilable: true, read_only: false, description: "The time at which the most recent occurrence of this event was recorded."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "A human-readable description of the status of this operation."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "This should be a short, machine understandable string that gives the reason for the transition into the object's current status."},
    {name: "related", kind: ::K8S::Api::Core::V1::ObjectReference, key: "related", nilable: true, read_only: false, description: "Optional secondary object for more complex actions."},
    {name: "reporting_component", kind: String, key: "reportingComponent", nilable: true, read_only: false, description: "Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)"},
    {name: "reporting_instance", kind: String, key: "reportingInstance", nilable: true, read_only: false, description: "ID of the controller instance, e.g. `kubelet-xyzf`."},
    {name: "series", kind: ::K8S::Api::Core::V1::EventSeries, key: "series", nilable: true, read_only: false, description: "Data about the Event series this event represents or nil if it's a singleton Event."},
    {name: "source", kind: ::K8S::Api::Core::V1::EventSource, key: "source", nilable: true, read_only: false, description: "The component reporting this event. Should be a short machine understandable string."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type of this event (Normal, Warning), new types could be added in the future"},

  ],
  description: "Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.",
)
