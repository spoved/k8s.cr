# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EventSeries; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EventSeries`.
  module Types::Api::Core::V1::EventSeries
    alias ValueType = Int32 | ::Time | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Number of occurrences in this series up to the last heartbeat time
    abstract def count : Int32?
    # :ditto:
    abstract def count! : Int32
    # :ditto:
    abstract def count? : Int32?
    # :ditto:
    abstract def count=(value : Int32?)
    # Time of the last occurrence observed
    abstract def last_observed_time : ::Time?
    # :ditto:
    abstract def last_observed_time! : ::Time
    # :ditto:
    abstract def last_observed_time? : ::Time?
    # :ditto:
    abstract def last_observed_time=(value : ::Time?)
    # State of this Series: Ongoing or Finished
    abstract def state : String?
    # :ditto:
    abstract def state! : String
    # :ditto:
    abstract def state? : String?
    # :ditto:
    abstract def state=(value : String?)
  end

  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  @[::K8S::Properties(
    count: {key: "count", accessor: "count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of occurrences in this series up to the last heartbeat time", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_observed_time: {key: "lastObservedTime", accessor: "last_observed_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time of the last occurrence observed", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    state: {key: "state", accessor: "state", kind: "String", nilable: true, default: nil, read_only: false, description: "State of this Series: Ongoing or Finished", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EventSeries < ::K8S::Types::Api::Core::V1::EventSeries::Instance
    include ::K8S::Types::Api::Core::V1::EventSeries
    include ::K8S::Kubernetes::Object

    # Number of occurrences in this series up to the last heartbeat time
    def count : Int32?
      self.["count"].as(Int32?)
    end

    # :ditto:
    def count! : Int32
      self.["count"].as(Int32?).not_nil!
    end

    # :ditto:
    def count? : Int32?
      self.["count"]?.as(Int32?)
    end

    # :ditto:
    def count=(value : Int32?)
      self.["count"] = value
    end

    # Time of the last occurrence observed
    def last_observed_time : ::Time?
      self.["lastObservedTime"].as(::Time?)
    end

    # :ditto:
    def last_observed_time! : ::Time
      self.["lastObservedTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_observed_time? : ::Time?
      self.["lastObservedTime"]?.as(::Time?)
    end

    # :ditto:
    def last_observed_time=(value : ::Time?)
      self.["lastObservedTime"] = value
    end

    # State of this Series: Ongoing or Finished
    def state : String?
      self.["state"].as(String?)
    end

    # :ditto:
    def state! : String
      self.["state"].as(String?).not_nil!
    end

    # :ditto:
    def state? : String?
      self.["state"]?.as(String?)
    end

    # :ditto:
    def state=(value : String?)
      self.["state"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "count", accessor: "count", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "lastObservedTime", accessor: "last_observed_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "state", accessor: "state", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
