# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition; end

module K8S
  # Namespace holding the types for `Api::Certificates::V1beta1::CertificateSigningRequestCondition`.
  module Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition
    alias ValueType = ::Time | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time?)
    # timestamp for the last update to this condition
    abstract def last_update_time : ::Time?
    # :ditto:
    abstract def last_update_time! : ::Time
    # :ditto:
    abstract def last_update_time? : ::Time?
    # :ditto:
    abstract def last_update_time=(value : ::Time?)
    # human readable message with details about the request state
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # brief reason for the request state
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String?)
    # type of the condition. Known conditions include "Approved", "Denied", and "Failed".
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  #
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time."},
    last_update_time: {key: "lastUpdateTime", accessor: "last_update_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "timestamp for the last update to this condition"},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "human readable message with details about the request state"},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "brief reason for the request state"},
    status: {key: "status", accessor: "status", kind: "String", nilable: true, default: nil, read_only: false, description: "Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\". Defaults to \"True\". If unset, should be treated as \"True\"."},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type of the condition. Known conditions include \"Approved\", \"Denied\", and \"Failed\"."},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition < ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition::Instance
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition
    include ::K8S::Kubernetes::Object

    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
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

    # timestamp for the last update to this condition
    def last_update_time : ::Time?
      self.["lastUpdateTime"].as(::Time?)
    end

    # :ditto:
    def last_update_time! : ::Time
      self.["lastUpdateTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_update_time? : ::Time?
      self.["lastUpdateTime"]?.as(::Time?)
    end

    # :ditto:
    def last_update_time=(value : ::Time?)
      self.["lastUpdateTime"] = value
    end

    # human readable message with details about the request state
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

    # brief reason for the request state
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

    # Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
    def status : String?
      self.["status"].as(String?)
    end

    # :ditto:
    def status! : String
      self.["status"].as(String?).not_nil!
    end

    # :ditto:
    def status? : String?
      self.["status"]?.as(String?)
    end

    # :ditto:
    def status=(value : String?)
      self.["status"] = value
    end

    # type of the condition. Known conditions include "Approved", "Denied", and "Failed".
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
        { key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "lastUpdateTime", accessor: "last_update_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
