# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition; end

module K8S
  # Namespace holding the types for `Api::Certificates::V1beta1::CertificateSigningRequestCondition`.
  module Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition
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
    # request approval state, currently Approved or Denied.
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
    last_update_time: {key: "lastUpdateTime", accessor: "last_update_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "timestamp for the last update to this condition", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "human readable message with details about the request state", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "brief reason for the request state", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "request approval state, currently Approved or Denied.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestCondition

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

    # request approval state, currently Approved or Denied.
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
        { key: "lastUpdateTime", accessor: "last_update_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
