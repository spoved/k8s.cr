# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Events::V1beta1::Event; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/event_source"
require "../../core/v1/object_reference"
require "./event_series"

module K8S
  # Namespace holding the types for `Api::Events::V1beta1::Event`.
  module Types::Api::Events::V1beta1::Event
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
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
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # What action was [[taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)]([taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.))
    abstract def action : String?
    # :ditto:
    abstract def action! : String
    # :ditto:
    abstract def action? : String?
    # :ditto:
    abstract def action=(value : String?)
    # Deprecated field assuring backward compatibility with core.v1 Event type
    abstract def deprecated_count : Int32?
    # :ditto:
    abstract def deprecated_count! : Int32
    # :ditto:
    abstract def deprecated_count? : Int32?
    # :ditto:
    abstract def deprecated_count=(value : Int32?)
    # Deprecated field assuring backward compatibility with core.v1 Event type
    abstract def deprecated_first_timestamp : ::Time?
    # :ditto:
    abstract def deprecated_first_timestamp! : ::Time
    # :ditto:
    abstract def deprecated_first_timestamp? : ::Time?
    # :ditto:
    abstract def deprecated_first_timestamp=(value : ::Time?)
    # Deprecated field assuring backward compatibility with core.v1 Event type
    abstract def deprecated_last_timestamp : ::Time?
    # :ditto:
    abstract def deprecated_last_timestamp! : ::Time
    # :ditto:
    abstract def deprecated_last_timestamp? : ::Time?
    # :ditto:
    abstract def deprecated_last_timestamp=(value : ::Time?)
    # Deprecated field assuring backward compatibility with core.v1 Event type
    abstract def deprecated_source : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def deprecated_source! : ::K8S::Api::Core::V1::EventSource
    # :ditto:
    abstract def deprecated_source? : ::K8S::Api::Core::V1::EventSource?
    # :ditto:
    abstract def deprecated_source=(value : ::K8S::Api::Core::V1::EventSource?)
    # Required. Time when this Event was first observed.
    abstract def event_time : ::Time?
    # :ditto:
    abstract def event_time! : ::Time
    # :ditto:
    abstract def event_time? : ::Time?
    # :ditto:
    abstract def event_time=(value : ::Time?)
    # Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    abstract def note : String?
    # :ditto:
    abstract def note! : String
    # :ditto:
    abstract def note? : String?
    # :ditto:
    abstract def note=(value : String?)
    # Why the action was taken.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    abstract def regarding : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def regarding! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def regarding? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def regarding=(value : ::K8S::Api::Core::V1::ObjectReference?)
    # Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    abstract def related : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def related? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def related=(value : ::K8S::Api::Core::V1::ObjectReference?)
    # Name of the controller that emitted this Event, e.g. [[`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)]([`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.))
    abstract def reporting_controller : String?
    # :ditto:
    abstract def reporting_controller! : String
    # :ditto:
    abstract def reporting_controller? : String?
    # :ditto:
    abstract def reporting_controller=(value : String?)
    # ID of the controller instance, e.g. `kubelet-xyzf`.
    abstract def reporting_instance : String?
    # :ditto:
    abstract def reporting_instance! : String
    # :ditto:
    abstract def reporting_instance? : String?
    # :ditto:
    abstract def reporting_instance=(value : String?)
    # Data about the Event series this event represents or nil if it's a singleton Event.
    abstract def series : ::K8S::Api::Events::V1beta1::EventSeries?
    # :ditto:
    abstract def series! : ::K8S::Api::Events::V1beta1::EventSeries
    # :ditto:
    abstract def series? : ::K8S::Api::Events::V1beta1::EventSeries?
    # :ditto:
    abstract def series=(value : ::K8S::Api::Events::V1beta1::EventSeries?)
    # Type of this event (Normal, Warning), new types could be added in the future.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
  end

  # Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "Event", version: "v1beta1", full: "io.k8s.api.events.v1beta1.Event")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "events/v1beta1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "Event", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    action: {key: "action", accessor: "action", kind: "String", nilable: true, default: nil, read_only: false, description: "What action was [taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_count: {key: "deprecatedCount", accessor: "deprecated_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_first_timestamp: {key: "deprecatedFirstTimestamp", accessor: "deprecated_first_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_last_timestamp: {key: "deprecatedLastTimestamp", accessor: "deprecated_last_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deprecated_source: {key: "deprecatedSource", accessor: "deprecated_source", kind: "::K8S::Api::Core::V1::EventSource", nilable: true, default: nil, read_only: false, description: "Deprecated field assuring backward compatibility with core.v1 Event type", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    event_time: {key: "eventTime", accessor: "event_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Required. Time when this Event was first observed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    note: {key: "note", accessor: "note", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Why the action was taken.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    regarding: {key: "regarding", accessor: "regarding", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    related: {key: "related", accessor: "related", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_controller: {key: "reportingController", accessor: "reporting_controller", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the controller that emitted this Event, e.g. [`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reporting_instance: {key: "reportingInstance", accessor: "reporting_instance", kind: "String", nilable: true, default: nil, read_only: false, description: "ID of the controller instance, e.g. `kubelet-xyzf`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    series: {key: "series", accessor: "series", kind: "::K8S::Api::Events::V1beta1::EventSeries", nilable: true, default: nil, read_only: false, description: "Data about the Event series this event represents or nil if it's a singleton Event.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of this event (Normal, Warning), new types could be added in the future.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Events::V1beta1::Event < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Events::V1beta1::Event

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"] = "events/v1beta1" unless self.["apiVersion"]?
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    def kind : String
      self.["kind"] = "Event" unless self.["kind"]?
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # What action was [[taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.)]([taken/failed regarding to the regarding object.](taken/failed regarding to the regarding object.))
    def action : String?
      self.["action"].as(String?)
    end

    # :ditto:
    def action! : String
      self.["action"].as(String?).not_nil!
    end

    # :ditto:
    def action? : String?
      self.["action"]?.as(String?)
    end

    # :ditto:
    def action=(value : String?)
      self.["action"] = value
    end

    # Deprecated field assuring backward compatibility with core.v1 Event type
    def deprecated_count : Int32?
      self.["deprecatedCount"].as(Int32?)
    end

    # :ditto:
    def deprecated_count! : Int32
      self.["deprecatedCount"].as(Int32?).not_nil!
    end

    # :ditto:
    def deprecated_count? : Int32?
      self.["deprecatedCount"]?.as(Int32?)
    end

    # :ditto:
    def deprecated_count=(value : Int32?)
      self.["deprecatedCount"] = value
    end

    # Deprecated field assuring backward compatibility with core.v1 Event type
    def deprecated_first_timestamp : ::Time?
      self.["deprecatedFirstTimestamp"].as(::Time?)
    end

    # :ditto:
    def deprecated_first_timestamp! : ::Time
      self.["deprecatedFirstTimestamp"].as(::Time?).not_nil!
    end

    # :ditto:
    def deprecated_first_timestamp? : ::Time?
      self.["deprecatedFirstTimestamp"]?.as(::Time?)
    end

    # :ditto:
    def deprecated_first_timestamp=(value : ::Time?)
      self.["deprecatedFirstTimestamp"] = value
    end

    # Deprecated field assuring backward compatibility with core.v1 Event type
    def deprecated_last_timestamp : ::Time?
      self.["deprecatedLastTimestamp"].as(::Time?)
    end

    # :ditto:
    def deprecated_last_timestamp! : ::Time
      self.["deprecatedLastTimestamp"].as(::Time?).not_nil!
    end

    # :ditto:
    def deprecated_last_timestamp? : ::Time?
      self.["deprecatedLastTimestamp"]?.as(::Time?)
    end

    # :ditto:
    def deprecated_last_timestamp=(value : ::Time?)
      self.["deprecatedLastTimestamp"] = value
    end

    # Deprecated field assuring backward compatibility with core.v1 Event type
    def deprecated_source : ::K8S::Api::Core::V1::EventSource?
      self.["deprecatedSource"].as(::K8S::Api::Core::V1::EventSource?)
    end

    # :ditto:
    def deprecated_source! : ::K8S::Api::Core::V1::EventSource
      self.["deprecatedSource"].as(::K8S::Api::Core::V1::EventSource?).not_nil!
    end

    # :ditto:
    def deprecated_source? : ::K8S::Api::Core::V1::EventSource?
      self.["deprecatedSource"]?.as(::K8S::Api::Core::V1::EventSource?)
    end

    # :ditto:
    def deprecated_source=(value : ::K8S::Api::Core::V1::EventSource?)
      self.["deprecatedSource"] = value
    end

    # Required. Time when this Event was first observed.
    def event_time : ::Time?
      self.["eventTime"].as(::Time?)
    end

    # :ditto:
    def event_time! : ::Time
      self.["eventTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def event_time? : ::Time?
      self.["eventTime"]?.as(::Time?)
    end

    # :ditto:
    def event_time=(value : ::Time?)
      self.["eventTime"] = value
    end

    # Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
    def note : String?
      self.["note"].as(String?)
    end

    # :ditto:
    def note! : String
      self.["note"].as(String?).not_nil!
    end

    # :ditto:
    def note? : String?
      self.["note"]?.as(String?)
    end

    # :ditto:
    def note=(value : String?)
      self.["note"] = value
    end

    # Why the action was taken.
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    # The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
    def regarding : ::K8S::Api::Core::V1::ObjectReference?
      self.["regarding"].as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def regarding! : ::K8S::Api::Core::V1::ObjectReference
      self.["regarding"].as(::K8S::Api::Core::V1::ObjectReference?).not_nil!
    end

    # :ditto:
    def regarding? : ::K8S::Api::Core::V1::ObjectReference?
      self.["regarding"]?.as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def regarding=(value : ::K8S::Api::Core::V1::ObjectReference?)
      self.["regarding"] = value
    end

    # Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
    def related : ::K8S::Api::Core::V1::ObjectReference?
      self.["related"].as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def related! : ::K8S::Api::Core::V1::ObjectReference
      self.["related"].as(::K8S::Api::Core::V1::ObjectReference?).not_nil!
    end

    # :ditto:
    def related? : ::K8S::Api::Core::V1::ObjectReference?
      self.["related"]?.as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def related=(value : ::K8S::Api::Core::V1::ObjectReference?)
      self.["related"] = value
    end

    # Name of the controller that emitted this Event, e.g. [[`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.)]([`kubernetes.io/kubelet`.](`kubernetes.io/kubelet`.))
    def reporting_controller : String?
      self.["reportingController"].as(String?)
    end

    # :ditto:
    def reporting_controller! : String
      self.["reportingController"].as(String?).not_nil!
    end

    # :ditto:
    def reporting_controller? : String?
      self.["reportingController"]?.as(String?)
    end

    # :ditto:
    def reporting_controller=(value : String?)
      self.["reportingController"] = value
    end

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    def reporting_instance : String?
      self.["reportingInstance"].as(String?)
    end

    # :ditto:
    def reporting_instance! : String
      self.["reportingInstance"].as(String?).not_nil!
    end

    # :ditto:
    def reporting_instance? : String?
      self.["reportingInstance"]?.as(String?)
    end

    # :ditto:
    def reporting_instance=(value : String?)
      self.["reportingInstance"] = value
    end

    # Data about the Event series this event represents or nil if it's a singleton Event.
    def series : ::K8S::Api::Events::V1beta1::EventSeries?
      self.["series"].as(::K8S::Api::Events::V1beta1::EventSeries?)
    end

    # :ditto:
    def series! : ::K8S::Api::Events::V1beta1::EventSeries
      self.["series"].as(::K8S::Api::Events::V1beta1::EventSeries?).not_nil!
    end

    # :ditto:
    def series? : ::K8S::Api::Events::V1beta1::EventSeries?
      self.["series"]?.as(::K8S::Api::Events::V1beta1::EventSeries?)
    end

    # :ditto:
    def series=(value : ::K8S::Api::Events::V1beta1::EventSeries?)
      self.["series"] = value
    end

    # Type of this event (Normal, Warning), new types could be added in the future.
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "events/v1beta1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "Event", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "action", accessor: "action", nilable: true, read_only: false, default: nil, kind: String },
        { key: "deprecatedCount", accessor: "deprecated_count", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "deprecatedFirstTimestamp", accessor: "deprecated_first_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "deprecatedLastTimestamp", accessor: "deprecated_last_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "deprecatedSource", accessor: "deprecated_source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EventSource },
        { key: "eventTime", accessor: "event_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "note", accessor: "note", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "regarding", accessor: "regarding", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
        { key: "related", accessor: "related", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
        { key: "reportingController", accessor: "reporting_controller", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reportingInstance", accessor: "reporting_instance", nilable: true, read_only: false, default: nil, kind: String },
        { key: "series", accessor: "series", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Events::V1beta1::EventSeries },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end

  module Resources::Events::V1beta1
    alias Event = ::K8S::Api::Events::V1beta1::Event
  end
end
