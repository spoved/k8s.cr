# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CertificateSigningRequestStatus contains conditions used to indicate [approved/denied/failed status of the request, and the issued certificate.](approved/denied/failed status of the request, and the issued certificate.)
  @[::K8S::Properties(
    certificate: {type: String, nilable: true, key: "certificate", getter: false, setter: false},
    conditions: {type: Array(Api::Certificates::V1::CertificateSigningRequestCondition), nilable: true, key: "conditions", getter: false, setter: false},
  )]
  class Api::Certificates::V1::CertificateSigningRequestStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

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
    @[::JSON::Field(key: "certificate", emit_null: false)]
    @[::YAML::Field(key: "certificate", emit_null: false)]
    property certificate : String | Nil

    # conditions applied to the request. Known conditions are "Approved", "Denied", and "Failed".
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Certificates::V1::CertificateSigningRequestCondition) | Nil

    def initialize(*, @certificate : String | Nil = nil, @conditions : Array | Nil = nil)
    end
  end
end
