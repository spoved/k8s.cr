# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestStatus; end

require "./certificate_signing_request_condition"

module K8S
  # Namespace holding the types for `Api::Certificates::V1beta1::CertificateSigningRequestStatus`.
  module Types::Api::Certificates::V1beta1::CertificateSigningRequestStatus
    alias ValueType = String | ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # If request was approved, the controller will place the issued certificate here.
    abstract def certificate : String?
    # :ditto:
    abstract def certificate! : String
    # :ditto:
    abstract def certificate? : String?
    # :ditto:
    abstract def certificate=(value : String?)
    # Conditions applied to the request, such as approval or denial.
    abstract def conditions : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?)
  end

  #
  @[::K8S::Properties(
    certificate: {key: "certificate", accessor: "certificate", kind: "String", nilable: true, default: nil, read_only: false, description: "If request was approved, the controller will place the issued certificate here.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)", nilable: true, default: nil, read_only: false, description: "Conditions applied to the request, such as approval or denial.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestStatus < ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestStatus::Instance
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestStatus
    include ::K8S::Kubernetes::Object

    # If request was approved, the controller will place the issued certificate here.
    def certificate : String?
      self.["certificate"].as(String?)
    end

    # :ditto:
    def certificate! : String
      self.["certificate"].as(String?).not_nil!
    end

    # :ditto:
    def certificate? : String?
      self.["certificate"]?.as(String?)
    end

    # :ditto:
    def certificate=(value : String?)
      self.["certificate"] = value
    end

    # Conditions applied to the request, such as approval or denial.
    def conditions : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)
      self.["conditions"].as(::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition)?)
      self.["conditions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "certificate", accessor: "certificate", nilable: true, read_only: false, default: nil, kind: String },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition) },
      ])
end
  end
end
