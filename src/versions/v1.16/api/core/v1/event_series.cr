# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EventSeries; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EventSeries`.
  module Types::Api::Core::V1::EventSeries
    # Number of occurrences in this series up to the last heartbeat time
    abstract def count : Int32?
    # :ditto:
    abstract def count! : Int32
    # :ditto:
    abstract def count? : Int32?
    # :ditto:
    abstract def count=(value : Int32)
    # Time of the last occurrence observed
    abstract def last_observed_time : ::Time?
    # :ditto:
    abstract def last_observed_time! : ::Time
    # :ditto:
    abstract def last_observed_time? : ::Time?
    # :ditto:
    abstract def last_observed_time=(value : ::Time)
    # State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
    abstract def state : String?
    # :ditto:
    abstract def state! : String
    # :ditto:
    abstract def state? : String?
    # :ditto:
    abstract def state=(value : String)
  end

  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  @[::K8S::Properties(
    count: {key: "count", accessor: "count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of occurrences in this series up to the last heartbeat time", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_observed_time: {key: "lastObservedTime", accessor: "last_observed_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time of the last occurrence observed", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    state: {key: "state", accessor: "state", kind: "String", nilable: true, default: nil, read_only: false, description: "State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EventSeries < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EventSeries
    k8s_object_accessor("count", count : Int32, true, false, "Number of occurrences in this series up to the last heartbeat time")
    k8s_object_accessor("lastObservedTime", last_observed_time : ::Time, true, false, "Time of the last occurrence observed")
    k8s_object_accessor("state", state : String, true, false, "State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18")

    def initialize(*, count : Int32? = nil, last_observed_time : ::Time? = nil, state : String? = nil)
      super()
      self.["count"] = count
      self.["lastObservedTime"] = last_observed_time
      self.["state"] = state
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "count", accessor: "count", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "lastObservedTime", accessor: "last_observed_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "state", accessor: "state", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
