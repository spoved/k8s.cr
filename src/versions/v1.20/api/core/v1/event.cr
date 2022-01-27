# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Event; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./object_reference"
require "./event_series"
require "./event_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::Event`.
  module Types::Api::Core::V1::Event
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta)
    # What action was [[taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)]([taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.))
    abstract def action : String?
    # :ditto:
    abstract def action! : String
    # :ditto:
    abstract def action? : String?
    # :ditto:
    abstract def action=(value : String)
    # The number of times this event has occurred.
    abstract def count : Int32?
    # :ditto:
    abstract def count! : Int32
    # :ditto:
    abstract def count? : Int32?
    # :ditto:
    abstract def count=(value : Int32)
    # Time when this Event was first observed.
    abstract def event_time : ::Time?
    # :ditto:
    abstract def event_time! : ::Time
    # :ditto:
    abstract def event_time? : ::Time?
    # :ditto:
    abstract def event_time=(value : ::Time)
    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    abstract def first_timestamp : ::Time?
    # :ditto:
    abstract def first_timestamp! : ::Time
    # :ditto:
    abstract def first_timestamp? : ::Time?
    # :ditto:
    abstract def first_timestamp=(value : ::Time)
    # The object that this event is about.
    abstract def involved_object : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def involved_object! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def involved_object? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def involved_object=(value : ::K8S::Api::Core::V1::ObjectReference)
    # The time at which the most recent occurrence of this event was recorded.
    abstract def last_timestamp : ::Time?
    # :ditto:
    abstract def last_timestamp! : ::Time
    # :ditto:
    abstract def last_timestamp? : ::Time?
    # :ditto:
    abstract def last_timestamp=(value : ::Time)
    # A human-readable description of the status of this operation.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Optional secondary object for more complex actions.
    abstract def related : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def related? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related=(value : ::K8S::Api::Core::V1::ObjectReference)
    # Name of the controller that emitted this Event, e.g. [[`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)]([`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.))
    abstract def reporting_component : String?
    # :ditto:
    abstract def reporting_component! : String
    # :ditto:
    abstract def reporting_component? : String?
    # :ditto:
    abstract def reporting_component=(value : String)
    # ID of the controller instance, e.g. `kubelet-xyzf`.
    abstract def reporting_instance : String?
    # :ditto:
    abstract def reporting_instance! : String
    # :ditto:
    abstract def reporting_instance? : String?
    # :ditto:
    abstract def reporting_instance=(value : String)
    # Data about the Event series this event represents or nil if it's a singleton Event.
    abstract def series : ::K8S::Api::Core::V1::EventSeries?
    # :ditto:
    abstract def series! : ::K8S::Api::Core::V1::EventSeries
    # :ditto:
    abstract def series? : ::K8S::Api::Core::V1::EventSeries?
    # :ditto:
    abstract def series=(value : ::K8S::Api::Core::V1::EventSeries)
    # The component reporting this event. Should be a short machine understandable string.
    abstract def source : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def source! : ::K8S::Api::Core::V1::EventSource
    # :ditto:
    abstract def source? : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def source=(value : ::K8S::Api::Core::V1::EventSource)
    # Type of this event (Normal, Warning), new types could be added in the future
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
  @[::K8S::GroupVersionKind(group: "", kind: "Event", version: "v1", full: "io.k8s.api.core.v1.Event")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "Event", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    action: {key: "action", accessor: "action", kind: "String", nilable: true, default: nil, read_only: false, description: "What action was [taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    count: {key: "count", accessor: "count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of times this event has occurred.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    event_time: {key: "eventTime", accessor: "event_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time when this Event was first observed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    first_timestamp: {key: "firstTimestamp", accessor: "first_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    involved_object: {key: "involvedObject", accessor: "involved_object", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: false, default: nil, read_only: false, description: "The object that this event is about.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_timestamp: {key: "lastTimestamp", accessor: "last_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "The time at which the most recent occurrence of this event was recorded.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable description of the status of this operation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "This should be a short, machine understandable string that gives the reason for the transition into the object's current status.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    related: {key: "related", accessor: "related", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "Optional secondary object for more complex actions.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_component: {key: "reportingComponent", accessor: "reporting_component", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_instance: {key: "reportingInstance", accessor: "reporting_instance", kind: "String", nilable: true, default: nil, read_only: false, description: "ID of the controller instance, e.g. `kubelet-xyzf`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    series: {key: "series", accessor: "series", kind: "::K8S::Api::Core::V1::EventSeries", nilable: true, default: nil, read_only: false, description: "Data about the Event series this event represents or nil if it's a singleton Event.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    source: {key: "source", accessor: "source", kind: "::K8S::Api::Core::V1::EventSource", nilable: true, default: nil, read_only: false, description: "The component reporting this event. Should be a short machine understandable string.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of this event (Normal, Warning), new types could be added in the future", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Event < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Core::V1::Event
    k8s_object_accessor("apiVersion", api_version : String = "v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "Event", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("action", action : String, true, false, "What action was [taken/failed regarding to the Regarding object.](taken/failed regarding to the Regarding object.)")
    k8s_object_accessor("count", count : Int32, true, false, "The number of times this event has occurred.")
    k8s_object_accessor("eventTime", event_time : ::Time, true, false, "Time when this Event was first observed.")
    k8s_object_accessor("firstTimestamp", first_timestamp : ::Time, true, false, "The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)")
    k8s_object_accessor("involvedObject", involved_object : ::K8S::Api::Core::V1::ObjectReference, false, false, "The object that this event is about.")
    k8s_object_accessor("lastTimestamp", last_timestamp : ::Time, true, false, "The time at which the most recent occurrence of this event was recorded.")
    k8s_object_accessor("message", message : String, true, false, "A human-readable description of the status of this operation.")
    k8s_object_accessor("reason", reason : String, true, false, "This should be a short, machine understandable string that gives the reason for the transition into the object's current status.")
    k8s_object_accessor("related", related : ::K8S::Api::Core::V1::ObjectReference, true, false, "Optional secondary object for more complex actions.")
    k8s_object_accessor("reportingComponent", reporting_component : String, true, false, "Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)")
    k8s_object_accessor("reportingInstance", reporting_instance : String, true, false, "ID of the controller instance, e.g. `kubelet-xyzf`.")
    k8s_object_accessor("series", series : ::K8S::Api::Core::V1::EventSeries, true, false, "Data about the Event series this event represents or nil if it's a singleton Event.")
    k8s_object_accessor("source", source : ::K8S::Api::Core::V1::EventSource, true, false, "The component reporting this event. Should be a short machine understandable string.")
    k8s_object_accessor("type", type : String, true, false, "Type of this event (Normal, Warning), new types could be added in the future")

    def initialize(*, api_version : String? = "v1", kind : String? = "Event", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, action : String? = nil, count : Int32? = nil, event_time : ::Time? = nil, first_timestamp : ::Time? = nil, involved_object : ::K8S::Api::Core::V1::ObjectReference? = nil, last_timestamp : ::Time? = nil, message : String? = nil, reason : String? = nil, related : ::K8S::Api::Core::V1::ObjectReference? = nil, reporting_component : String? = nil, reporting_instance : String? = nil, series : ::K8S::Api::Core::V1::EventSeries? = nil, source : ::K8S::Api::Core::V1::EventSource? = nil, type : String? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["action"] = action
      self.["count"] = count
      self.["eventTime"] = event_time
      self.["firstTimestamp"] = first_timestamp
      self.["involvedObject"] = involved_object
      self.["lastTimestamp"] = last_timestamp
      self.["message"] = message
      self.["reason"] = reason
      self.["related"] = related
      self.["reportingComponent"] = reporting_component
      self.["reportingInstance"] = reporting_instance
      self.["series"] = series
      self.["source"] = source
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "Event", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "action", accessor: "action", nilable: true, read_only: false, default: nil, kind: String},
      {key: "count", accessor: "count", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "eventTime", accessor: "event_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "firstTimestamp", accessor: "first_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "involvedObject", accessor: "involved_object", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "lastTimestamp", accessor: "last_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "related", accessor: "related", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "reportingComponent", accessor: "reporting_component", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reportingInstance", accessor: "reporting_instance", nilable: true, read_only: false, default: nil, kind: String},
      {key: "series", accessor: "series", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EventSeries},
      {key: "source", accessor: "source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EventSource},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end

  module Resources::V1
    alias Event = ::K8S::Api::Core::V1::Event
  end
end
