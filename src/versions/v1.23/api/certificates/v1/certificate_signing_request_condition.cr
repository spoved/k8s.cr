# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1::CertificateSigningRequestCondition; end

module K8S
  # Namespace holding the types for `Api::Certificates::V1::CertificateSigningRequestCondition`.
  module Types::Api::Certificates::V1::CertificateSigningRequestCondition
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
    # lastUpdateTime is the time of the last update to this condition
    abstract def last_update_time : ::Time?
    # :ditto:
    abstract def last_update_time! : ::Time
    # :ditto:
    abstract def last_update_time? : ::Time?
    # :ditto:
    abstract def last_update_time=(value : ::Time?)
    # message contains a human readable message with details about the request state
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # reason indicates a brief reason for the request state
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
    abstract def status : String
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # type of the condition. Known conditions are "Approved", "Denied", and "Failed".
    #
    # An "Approved" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.
    #
    # A "Denied" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.
    #
    # A "Failed" condition is added via the /status subresource, indicating the signer failed to issue the certificate.
    #
    # Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.
    #
    # Only one condition of a given type is allowed.
    #
    # Possible enum values:
    #  - `"Approved"` Approved indicates the request was approved and should be issued by the signer.
    #  - `"Denied"` Denied indicates the request was denied and should not be issued by the signer.
    #  - `"Failed"` Failed indicates the signer failed to issue the certificate.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_update_time: {key: "lastUpdateTime", accessor: "last_update_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "lastUpdateTime is the time of the last update to this condition", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "message contains a human readable message with details about the request state", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "reason indicates a brief reason for the request state", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".\n\nAn \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.\n\nA \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.\n\nA \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.\n\nApproved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.\n\nOnly one condition of a given type is allowed.\n\nPossible enum values:\n - `\"Approved\"` Approved indicates the request was approved and should be issued by the signer.\n - `\"Denied\"` Denied indicates the request was denied and should not be issued by the signer.\n - `\"Failed\"` Failed indicates the signer failed to issue the certificate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1::CertificateSigningRequestCondition < ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestCondition::Instance
    include ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestCondition
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

    # lastUpdateTime is the time of the last update to this condition
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

    # message contains a human readable message with details about the request state
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

    # reason indicates a brief reason for the request state
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

    # status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
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

    # type of the condition. Known conditions are "Approved", "Denied", and "Failed".
    #
    # An "Approved" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.
    #
    # A "Denied" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.
    #
    # A "Failed" condition is added via the /status subresource, indicating the signer failed to issue the certificate.
    #
    # Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.
    #
    # Only one condition of a given type is allowed.
    #
    # Possible enum values:
    #  - `"Approved"` Approved indicates the request was approved and should be issued by the signer.
    #  - `"Denied"` Denied indicates the request was denied and should not be issued by the signer.
    #  - `"Failed"` Failed indicates the signer failed to issue the certificate.
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
        { key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
