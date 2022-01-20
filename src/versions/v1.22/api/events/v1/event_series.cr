# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Events::V1::EventSeries; end

module K8S
  # Namespace holding the types for `Api::Events::V1::EventSeries`.
  module Types::Api::Events::V1::EventSeries
    alias ValueType = Int32 | ::Time | Nil
    alias Instance = ::K8S::Object(ValueType)

    # count is the number of occurrences in this series up to the last heartbeat time.
    abstract def count : Int32
    # :ditto:
    abstract def count! : Int32
    # :ditto:
    abstract def count? : Int32?
    # :ditto:
    abstract def count=(value : Int32)
    # lastObservedTime is the time when last Event from the series was seen before last heartbeat.
    abstract def last_observed_time : ::Time
    # :ditto:
    abstract def last_observed_time! : ::Time
    # :ditto:
    abstract def last_observed_time? : ::Time?
    # :ditto:
    abstract def last_observed_time=(value : ::Time)
  end

  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.](was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.)
  @[::K8S::Properties(
    count: {key: "count", accessor: "count", kind: "Int32", nilable: false, default: nil, read_only: false, description: "count is the number of occurrences in this series up to the last heartbeat time.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_observed_time: {key: "lastObservedTime", accessor: "last_observed_time", kind: "::Time", nilable: false, default: nil, read_only: false, description: "lastObservedTime is the time when last Event from the series was seen before last heartbeat.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Events::V1::EventSeries < ::K8S::Types::Api::Events::V1::EventSeries::Instance
    include ::K8S::Types::Api::Events::V1::EventSeries
    include ::K8S::Kubernetes::Object

    # count is the number of occurrences in this series up to the last heartbeat time.
    def count : Int32
      self.["count"].as(Int32)
    end

    # :ditto:
    def count! : Int32
      self.["count"].as(Int32).not_nil!
    end

    # :ditto:
    def count? : Int32?
      self.["count"]?.as(Int32?)
    end

    # :ditto:
    def count=(value : Int32)
      self.["count"] = value
    end

    # lastObservedTime is the time when last Event from the series was seen before last heartbeat.
    def last_observed_time : ::Time
      self.["lastObservedTime"].as(::Time)
    end

    # :ditto:
    def last_observed_time! : ::Time
      self.["lastObservedTime"].as(::Time).not_nil!
    end

    # :ditto:
    def last_observed_time? : ::Time?
      self.["lastObservedTime"]?.as(::Time?)
    end

    # :ditto:
    def last_observed_time=(value : ::Time)
      self.["lastObservedTime"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "count", accessor: "count", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "lastObservedTime", accessor: "last_observed_time", nilable: false, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
