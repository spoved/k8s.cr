# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./certificate_signing_request_spec"
require "./certificate_signing_request_status"

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1beta1", "CertificateSigningRequest",
  namespace: "::K8S::Api::Certificates::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Certificates::V1beta1::CertificateSigningRequestSpec, key: "spec", nilable: true, read_only: false, description: "The certificate request itself and any additional information."},
    {name: "status", kind: ::K8S::Api::Certificates::V1beta1::CertificateSigningRequestStatus, key: "status", nilable: true, read_only: false, description: "Derived information about the request."},

  ],
  description: "Describes a certificate signing request",
)
