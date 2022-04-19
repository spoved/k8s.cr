# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./certificate_signing_request"

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1beta1", "CertificateSigningRequestList",
  namespace: "::K8S::Api::Certificates::V1beta1",
  list: true,
  list_kind: K8S::Api::Certificates::V1beta1::CertificateSigningRequest,
  description: nil,
)
