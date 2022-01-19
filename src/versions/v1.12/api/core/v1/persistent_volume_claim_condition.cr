# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimCondition`.
  module Types::Api::Core::V1::PersistentVolumeClaimCondition
    alias ValueType = ::Time | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Last time we probed the condition.
    abstract def last_probe_time : ::Time?
    # :ditto:
    abstract def last_probe_time! : ::Time
    # :ditto:
    abstract def last_probe_time? : ::Time?
    # :ditto:
    abstract def last_probe_time=(value : ::Time?)
    # Last time the condition transitioned from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time?)
    # Human-readable message indicating details about last transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    #
    abstract def status : String
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    #
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # PersistentVolumeClaimCondition contails details about state of pvc
  @[::K8S::Properties(
    last_probe_time: {key: "lastProbeTime", accessor: "last_probe_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time we probed the condition."},
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time the condition transitioned from one status to another."},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Human-readable message indicating details about last transition."},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized."},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimCondition < ::K8S::Types::Api::Core::V1::PersistentVolumeClaimCondition::Instance
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimCondition
    include ::K8S::Kubernetes::Object

    # Last time we probed the condition.
    def last_probe_time : ::Time?
      self.["lastProbeTime"].as(::Time?)
    end

    # :ditto:
    def last_probe_time! : ::Time
      self.["lastProbeTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_probe_time? : ::Time?
      self.["lastProbeTime"]?.as(::Time?)
    end

    # :ditto:
    def last_probe_time=(value : ::Time?)
      self.["lastProbeTime"] = value
    end

    # Last time the condition transitioned from one status to another.
    def last_transition_time : ::Time?
      self.["lastTransitionTime"].as(::Time?)
    end

    # :ditto:
    def last_transition_time! : ::Time
      self.["lastTransitionTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_transition_time? : ::Time?
      self.["lastTransitionTime"]?.as(::Time?)
    end

    # :ditto:
    def last_transition_time=(value : ::Time?)
      self.["lastTransitionTime"] = value
    end

    # Human-readable message indicating details about last transition.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
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

    #
    def status : String
      self.["status"].as(String)
    end

    # :ditto:
    def status! : String
      self.["status"].as(String).not_nil!
    end

    # :ditto:
    def status? : String?
      self.["status"]?.as(String?)
    end

    # :ditto:
    def status=(value : String)
      self.["status"] = value
    end

    #
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "lastProbeTime", accessor: "last_probe_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
