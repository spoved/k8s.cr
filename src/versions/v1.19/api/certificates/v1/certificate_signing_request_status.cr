# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1::CertificateSigningRequestStatus; end

require "./certificate_signing_request_condition"

module K8S
  # Namespace holding the types for `Api::Certificates::V1::CertificateSigningRequestStatus`.
  module Types::Api::Certificates::V1::CertificateSigningRequestStatus
    alias ValueType = String | ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.
    #
    # If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.
    #
    # Validation requirements:
    #  1. certificate must contain one or more PEM blocks.
    #  2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded data
    #   must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
    #  3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is unvalidated,
    #   to allow for explanatory text as described in section 5.2 of RFC7468.
    #
    # If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.
    #
    # The certificate is encoded in PEM format.
    #
    # When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:
    #
    #     base64(
    #     -----BEGIN CERTIFICATE-----
    #     ...
    #     -----END CERTIFICATE-----
    #     )
    abstract def certificate : String?
    # :ditto:
    abstract def certificate! : String
    # :ditto:
    abstract def certificate? : String?
    # :ditto:
    abstract def certificate=(value : String?)
    # conditions applied to the request. Known conditions are "Approved", "Denied", and "Failed".
    abstract def conditions : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?)
  end

  # CertificateSigningRequestStatus contains conditions used to indicate [approved/denied/failed status of the request, and the issued certificate.](approved/denied/failed status of the request, and the issued certificate.)
  @[::K8S::Properties(
    certificate: {key: "certificate", accessor: "certificate", kind: "String", nilable: true, default: nil, read_only: false, description: "certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.\n\nIf the certificate signing request is denied, a condition of type \"Denied\" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type \"Failed\" is added and this field remains empty.\n\nValidation requirements:\n 1. certificate must contain one or more PEM blocks.\n 2. All PEM blocks must have the \"CERTIFICATE\" label, contain no headers, and the encoded data\n  must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.\n 3. Non-PEM content may appear before or after the \"CERTIFICATE\" PEM blocks and is unvalidated,\n  to allow for explanatory text as described in section 5.2 of RFC7468.\n\nIf more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.\n\nThe certificate is encoded in PEM format.\n\nWhen serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:\n\n    base64(\n    -----BEGIN CERTIFICATE-----\n    ...\n    -----END CERTIFICATE-----\n    )", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)", nilable: true, default: nil, read_only: false, description: "conditions applied to the request. Known conditions are \"Approved\", \"Denied\", and \"Failed\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["type"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1::CertificateSigningRequestStatus < ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestStatus::Instance
    include ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestStatus
    include ::K8S::Kubernetes::Object

    # certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.
    #
    # If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.
    #
    # Validation requirements:
    #  1. certificate must contain one or more PEM blocks.
    #  2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded data
    #   must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
    #  3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is unvalidated,
    #   to allow for explanatory text as described in section 5.2 of RFC7468.
    #
    # If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.
    #
    # The certificate is encoded in PEM format.
    #
    # When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:
    #
    #     base64(
    #     -----BEGIN CERTIFICATE-----
    #     ...
    #     -----END CERTIFICATE-----
    #     )
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

    # conditions applied to the request. Known conditions are "Approved", "Denied", and "Failed".
    def conditions : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)
      self.["conditions"].as(::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition)?)
      self.["conditions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "certificate", accessor: "certificate", nilable: true, read_only: false, default: nil, kind: String },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition) },
      ])
end
  end
end
