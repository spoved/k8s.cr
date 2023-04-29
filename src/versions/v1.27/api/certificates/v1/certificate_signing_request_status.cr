# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./certificate_signing_request_condition"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestStatus",
  namespace: "::K8S::Api::Certificates::V1",
  properties: [

    {name: "certificate", kind: String, key: "certificate", nilable: true, read_only: false, description: "certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.\n\nIf the certificate signing request is denied, a condition of type \"Denied\" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type \"Failed\" is added and this field remains empty.\n\nValidation requirements:\n 1. certificate must contain one or more PEM blocks.\n 2. All PEM blocks must have the \"CERTIFICATE\" label, contain no headers, and the encoded data\n  must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.\n 3. Non-PEM content may appear before or after the \"CERTIFICATE\" PEM blocks and is unvalidated,\n  to allow for explanatory text as described in section 5.2 of RFC7468.\n\nIf more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.\n\nThe certificate is encoded in PEM format.\n\nWhen serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:\n\n    base64(\n    -----BEGIN CERTIFICATE-----\n    ...\n    -----END CERTIFICATE-----\n    )"},
    {name: "conditions", kind: ::Array(::K8S::Api::Certificates::V1::CertificateSigningRequestCondition), key: "conditions", nilable: true, read_only: false, description: "conditions applied to the request. Known conditions are \"Approved\", \"Denied\", and \"Failed\"."},

  ]
)
