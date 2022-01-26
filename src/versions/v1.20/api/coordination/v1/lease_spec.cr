# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Coordination::V1::LeaseSpec; end

module K8S
  # Namespace holding the types for `Api::Coordination::V1::LeaseSpec`.
  module Types::Api::Coordination::V1::LeaseSpec
    # acquireTime is a time when the current lease was acquired.
    abstract def acquire_time : ::Time?
    # :ditto:
    abstract def acquire_time! : ::Time
    # :ditto:
    abstract def acquire_time? : ::Time?
    # :ditto:
    abstract def acquire_time=(value : ::Time?)
    # holderIdentity contains the identity of the holder of a current lease.
    abstract def holder_identity : String?
    # :ditto:
    abstract def holder_identity! : String
    # :ditto:
    abstract def holder_identity? : String?
    # :ditto:
    abstract def holder_identity=(value : String?)
    # leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    abstract def lease_duration_seconds : Int32?
    # :ditto:
    abstract def lease_duration_seconds! : Int32
    # :ditto:
    abstract def lease_duration_seconds? : Int32?
    # :ditto:
    abstract def lease_duration_seconds=(value : Int32?)
    # leaseTransitions is the number of transitions of a lease between holders.
    abstract def lease_transitions : Int32?
    # :ditto:
    abstract def lease_transitions! : Int32
    # :ditto:
    abstract def lease_transitions? : Int32?
    # :ditto:
    abstract def lease_transitions=(value : Int32?)
    # renewTime is a time when the current holder of a lease has last updated the lease.
    abstract def renew_time : ::Time?
    # :ditto:
    abstract def renew_time! : ::Time
    # :ditto:
    abstract def renew_time? : ::Time?
    # :ditto:
    abstract def renew_time=(value : ::Time?)
  end

  # LeaseSpec is a specification of a Lease.
  @[::K8S::Properties(
    acquire_time: {key: "acquireTime", accessor: "acquire_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "acquireTime is a time when the current lease was acquired.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    holder_identity: {key: "holderIdentity", accessor: "holder_identity", kind: "String", nilable: true, default: nil, read_only: false, description: "holderIdentity contains the identity of the holder of a current lease.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    lease_duration_seconds: {key: "leaseDurationSeconds", accessor: "lease_duration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    lease_transitions: {key: "leaseTransitions", accessor: "lease_transitions", kind: "Int32", nilable: true, default: nil, read_only: false, description: "leaseTransitions is the number of transitions of a lease between holders.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    renew_time: {key: "renewTime", accessor: "renew_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "renewTime is a time when the current holder of a lease has last updated the lease.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Coordination::V1::LeaseSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Coordination::V1::LeaseSpec

    # acquireTime is a time when the current lease was acquired.
    def acquire_time : ::Time?
      self.["acquireTime"].as(::Time?)
    end

    # :ditto:
    def acquire_time! : ::Time
      self.["acquireTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def acquire_time? : ::Time?
      self.["acquireTime"]?.as(::Time?)
    end

    # :ditto:
    def acquire_time=(value : ::Time?)
      self.["acquireTime"] = value
    end

    # holderIdentity contains the identity of the holder of a current lease.
    def holder_identity : String?
      self.["holderIdentity"].as(String?)
    end

    # :ditto:
    def holder_identity! : String
      self.["holderIdentity"].as(String?).not_nil!
    end

    # :ditto:
    def holder_identity? : String?
      self.["holderIdentity"]?.as(String?)
    end

    # :ditto:
    def holder_identity=(value : String?)
      self.["holderIdentity"] = value
    end

    # leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    def lease_duration_seconds : Int32?
      self.["leaseDurationSeconds"].as(Int32?)
    end

    # :ditto:
    def lease_duration_seconds! : Int32
      self.["leaseDurationSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def lease_duration_seconds? : Int32?
      self.["leaseDurationSeconds"]?.as(Int32?)
    end

    # :ditto:
    def lease_duration_seconds=(value : Int32?)
      self.["leaseDurationSeconds"] = value
    end

    # leaseTransitions is the number of transitions of a lease between holders.
    def lease_transitions : Int32?
      self.["leaseTransitions"].as(Int32?)
    end

    # :ditto:
    def lease_transitions! : Int32
      self.["leaseTransitions"].as(Int32?).not_nil!
    end

    # :ditto:
    def lease_transitions? : Int32?
      self.["leaseTransitions"]?.as(Int32?)
    end

    # :ditto:
    def lease_transitions=(value : Int32?)
      self.["leaseTransitions"] = value
    end

    # renewTime is a time when the current holder of a lease has last updated the lease.
    def renew_time : ::Time?
      self.["renewTime"].as(::Time?)
    end

    # :ditto:
    def renew_time! : ::Time
      self.["renewTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def renew_time? : ::Time?
      self.["renewTime"]?.as(::Time?)
    end

    # :ditto:
    def renew_time=(value : ::Time?)
      self.["renewTime"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "acquireTime", accessor: "acquire_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "holderIdentity", accessor: "holder_identity", nilable: true, read_only: false, default: nil, kind: String },
        { key: "leaseDurationSeconds", accessor: "lease_duration_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "leaseTransitions", accessor: "lease_transitions", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "renewTime", accessor: "renew_time", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
