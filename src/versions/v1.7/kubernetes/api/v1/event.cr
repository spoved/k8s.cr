# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Event is a report of an event somewhere in the cluster.
  @[::K8S::GroupVersionKind(group: "", kind: "Event", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/events", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
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
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/events/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Kubernetes::Api::V1::Event
    getter api_version : String = "v1"
    getter kind : String = "Event"
    # The number of times this event has occurred.
    property count : Int32 | Nil

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    property first_timestamp : Time | Nil

    # The object that this event is about.
    property involved_object : Kubernetes::Api::V1::ObjectReference

    # The time at which the most recent occurrence of this event was recorded.
    property last_timestamp : Time | Nil

    # A human-readable description of the status of this operation.
    property message : String | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    property reason : String | Nil

    # The component reporting this event. Should be a short machine understandable string.
    property source : Kubernetes::Api::V1::EventSource | Nil

    # Type of this event (Normal, Warning), new types could be added in the future
    property type : String | Nil

    ::YAML.mapping({
      api_version:     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:            {type: String, default: "Event", key: "kind", setter: false},
      count:           {type: Int32, nilable: true, key: "count", getter: false, setter: false},
      first_timestamp: {type: Time, nilable: true, key: "firstTimestamp", getter: false, setter: false},
      involved_object: {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "involvedObject", getter: false, setter: false},
      last_timestamp:  {type: Time, nilable: true, key: "lastTimestamp", getter: false, setter: false},
      message:         {type: String, nilable: true, key: "message", getter: false, setter: false},
      metadata:        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata", getter: false, setter: false},
      reason:          {type: String, nilable: true, key: "reason", getter: false, setter: false},
      source:          {type: Kubernetes::Api::V1::EventSource, nilable: true, key: "source", getter: false, setter: false},
      type:            {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:            {type: String, default: "Event", key: "kind", setter: false},
      count:           {type: Int32, nilable: true, key: "count", getter: false, setter: false},
      first_timestamp: {type: Time, nilable: true, key: "firstTimestamp", getter: false, setter: false},
      involved_object: {type: Kubernetes::Api::V1::ObjectReference, nilable: false, key: "involvedObject", getter: false, setter: false},
      last_timestamp:  {type: Time, nilable: true, key: "lastTimestamp", getter: false, setter: false},
      message:         {type: String, nilable: true, key: "message", getter: false, setter: false},
      metadata:        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: false, key: "metadata", getter: false, setter: false},
      reason:          {type: String, nilable: true, key: "reason", getter: false, setter: false},
      source:          {type: Kubernetes::Api::V1::EventSource, nilable: true, key: "source", getter: false, setter: false},
      type:            {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @involved_object : Kubernetes::Api::V1::ObjectReference, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta, @count : Int32 | Nil = nil, @first_timestamp : Time | Nil = nil, @last_timestamp : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @source : Kubernetes::Api::V1::EventSource | Nil = nil, @type : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Event = ::K8S::Kubernetes::Api::V1::Event
  end
end
