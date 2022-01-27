# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Events::V1::Event; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/event_source"
require "../../core/v1/object_reference"
require "./event_series"

module K8S
  # Namespace holding the types for `Api::Events::V1::Event`.
  module Types::Api::Events::V1::Event
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
    # action is what action was [[taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.)]([taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.))
    abstract def action : String?
    # :ditto:
    abstract def action! : String
    # :ditto:
    abstract def action? : String?
    # :ditto:
    abstract def action=(value : String)
    # deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
    abstract def deprecated_count : Int32?
    # :ditto:
    abstract def deprecated_count! : Int32
    # :ditto:
    abstract def deprecated_count? : Int32?
    # :ditto:
    abstract def deprecated_count=(value : Int32)
    # deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    abstract def deprecated_first_timestamp : ::Time?
    # :ditto:
    abstract def deprecated_first_timestamp! : ::Time
    # :ditto:
    abstract def deprecated_first_timestamp? : ::Time?
    # :ditto:
    abstract def deprecated_first_timestamp=(value : ::Time)
    # deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
    abstract def deprecated_last_timestamp : ::Time?
    # :ditto:
    abstract def deprecated_last_timestamp! : ::Time
    # :ditto:
    abstract def deprecated_last_timestamp? : ::Time?
    # :ditto:
    abstract def deprecated_last_timestamp=(value : ::Time)
    # deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
    abstract def deprecated_source : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def deprecated_source! : ::K8S::Api::Core::V1::EventSource
    # :ditto:
    abstract def deprecated_source? : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def deprecated_source=(value : ::K8S::Api::Core::V1::EventSource)
    # eventTime is the time when this Event was first observed. It is required.
    abstract def event_time : ::Time?
    # :ditto:
    abstract def event_time! : ::Time
    # :ditto:
    abstract def event_time? : ::Time?
    # :ditto:
    abstract def event_time=(value : ::Time)
    # note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    abstract def note : String?
    # :ditto:
    abstract def note! : String
    # :ditto:
    abstract def note? : String?
    # :ditto:
    abstract def note=(value : String)
    # reason is why the action was taken. It is human-readable. This field can have at most 128 characters.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    abstract def regarding : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def regarding! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def regarding? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def regarding=(value : ::K8S::Api::Core::V1::ObjectReference)
    # related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    abstract def related : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def related? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related=(value : ::K8S::Api::Core::V1::ObjectReference)
    # reportingController is the name of the controller that emitted this Event, e.g. [[`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)]([`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.))
    abstract def reporting_controller : String?
    # :ditto:
    abstract def reporting_controller! : String
    # :ditto:
    abstract def reporting_controller? : String?
    # :ditto:
    abstract def reporting_controller=(value : String)
    # reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
    abstract def reporting_instance : String?
    # :ditto:
    abstract def reporting_instance! : String
    # :ditto:
    abstract def reporting_instance? : String?
    # :ditto:
    abstract def reporting_instance=(value : String)
    # series is data about the Event series this event represents or nil if it's a singleton Event.
    abstract def series : ::K8S::Api::Events::V1::EventSeries?
    # :ditto:
    abstract def series! : ::K8S::Api::Events::V1::EventSeries
    # :ditto:
    abstract def series? : ::K8S::Api::Events::V1::EventSeries?
    # :ditto:
    abstract def series=(value : ::K8S::Api::Events::V1::EventSeries)
    # type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "Event", version: "v1", full: "io.k8s.api.events.v1.Event")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "events/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "Event", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    action: {key: "action", accessor: "action", kind: "String", nilable: true, default: nil, read_only: false, description: "action is what action was [taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_count: {key: "deprecatedCount", accessor: "deprecated_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_first_timestamp: {key: "deprecatedFirstTimestamp", accessor: "deprecated_first_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_last_timestamp: {key: "deprecatedLastTimestamp", accessor: "deprecated_last_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_source: {key: "deprecatedSource", accessor: "deprecated_source", kind: "::K8S::Api::Core::V1::EventSource", nilable: true, default: nil, read_only: false, description: "deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    event_time: {key: "eventTime", accessor: "event_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "eventTime is the time when this Event was first observed. It is required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    note: {key: "note", accessor: "note", kind: "String", nilable: true, default: nil, read_only: false, description: "note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "reason is why the action was taken. It is human-readable. This field can have at most 128 characters.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    regarding: {key: "regarding", accessor: "regarding", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    related: {key: "related", accessor: "related", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_controller: {key: "reportingController", accessor: "reporting_controller", kind: "String", nilable: true, default: nil, read_only: false, description: "reportingController is the name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_instance: {key: "reportingInstance", accessor: "reporting_instance", kind: "String", nilable: true, default: nil, read_only: false, description: "reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    series: {key: "series", accessor: "series", kind: "::K8S::Api::Events::V1::EventSeries", nilable: true, default: nil, read_only: false, description: "series is data about the Event series this event represents or nil if it's a singleton Event.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Events::V1::Event < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Events::V1::Event
    k8s_object_accessor("apiVersion", api_version : String = "events/v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "Event", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("action", action : String, true, false, "action is what action was [taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.](taken/failed regarding to the regarding object. It is machine-readable. This field can have at most 128 characters.)")
    k8s_object_accessor("deprecatedCount", deprecated_count : Int32, true, false, "deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.")
    k8s_object_accessor("deprecatedFirstTimestamp", deprecated_first_timestamp : ::Time, true, false, "deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.")
    k8s_object_accessor("deprecatedLastTimestamp", deprecated_last_timestamp : ::Time, true, false, "deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.")
    k8s_object_accessor("deprecatedSource", deprecated_source : ::K8S::Api::Core::V1::EventSource, true, false, "deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.")
    k8s_object_accessor("eventTime", event_time : ::Time, true, false, "eventTime is the time when this Event was first observed. It is required.")
    k8s_object_accessor("note", note : String, true, false, "note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.")
    k8s_object_accessor("reason", reason : String, true, false, "reason is why the action was taken. It is human-readable. This field can have at most 128 characters.")
    k8s_object_accessor("regarding", regarding : ::K8S::Api::Core::V1::ObjectReference, true, false, "regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.")
    k8s_object_accessor("related", related : ::K8S::Api::Core::V1::ObjectReference, true, false, "related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.")
    k8s_object_accessor("reportingController", reporting_controller : String, true, false, "reportingController is the name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`. This field cannot be empty for new Events.](`kubernetes.io/kubelet`. This field cannot be empty for new Events.)")
    k8s_object_accessor("reportingInstance", reporting_instance : String, true, false, "reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.")
    k8s_object_accessor("series", series : ::K8S::Api::Events::V1::EventSeries, true, false, "series is data about the Event series this event represents or nil if it's a singleton Event.")
    k8s_object_accessor("type", type : String, true, false, "type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable.")

    def initialize(*, api_version : String? = "events/v1", kind : String? = "Event", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, action : String? = nil, deprecated_count : Int32? = nil, deprecated_first_timestamp : ::Time? = nil, deprecated_last_timestamp : ::Time? = nil, deprecated_source : ::K8S::Api::Core::V1::EventSource? = nil, event_time : ::Time? = nil, note : String? = nil, reason : String? = nil, regarding : ::K8S::Api::Core::V1::ObjectReference? = nil, related : ::K8S::Api::Core::V1::ObjectReference? = nil, reporting_controller : String? = nil, reporting_instance : String? = nil, series : ::K8S::Api::Events::V1::EventSeries? = nil, type : String? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["action"] = action
      self.["deprecatedCount"] = deprecated_count
      self.["deprecatedFirstTimestamp"] = deprecated_first_timestamp
      self.["deprecatedLastTimestamp"] = deprecated_last_timestamp
      self.["deprecatedSource"] = deprecated_source
      self.["eventTime"] = event_time
      self.["note"] = note
      self.["reason"] = reason
      self.["regarding"] = regarding
      self.["related"] = related
      self.["reportingController"] = reporting_controller
      self.["reportingInstance"] = reporting_instance
      self.["series"] = series
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "events/v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "Event", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "action", accessor: "action", nilable: true, read_only: false, default: nil, kind: String},
      {key: "deprecatedCount", accessor: "deprecated_count", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "deprecatedFirstTimestamp", accessor: "deprecated_first_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "deprecatedLastTimestamp", accessor: "deprecated_last_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "deprecatedSource", accessor: "deprecated_source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EventSource},
      {key: "eventTime", accessor: "event_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "note", accessor: "note", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "regarding", accessor: "regarding", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "related", accessor: "related", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "reportingController", accessor: "reporting_controller", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reportingInstance", accessor: "reporting_instance", nilable: true, read_only: false, default: nil, kind: String},
      {key: "series", accessor: "series", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Events::V1::EventSeries},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end

  module Resources::Events::V1
    alias Event = ::K8S::Api::Events::V1::Event
  end
end
