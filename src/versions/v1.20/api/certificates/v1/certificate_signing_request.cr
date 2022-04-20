# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./certificate_signing_request_spec"
require "./certificate_signing_request_status"

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1", "CertificateSigningRequest",
  namespace: "::K8S::Api::Certificates::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Certificates::V1::CertificateSigningRequestSpec, key: "spec", nilable: false, read_only: false, description: "spec contains the certificate request, and is immutable after creation. Only the request, signerName, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users."},
    {name: "status", kind: ::K8S::Api::Certificates::V1::CertificateSigningRequestStatus, key: "status", nilable: true, read_only: false, description: "status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure."},

  ],
  description: "CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.\n\nKubelets use this API to obtain:\n 1. client certificates to authenticate to kube-apiserver (with the \"kubernetes.io/kube-apiserver-client-kubelet\" signerName).\n 2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the \"kubernetes.io/kubelet-serving\" signerName).\n\nThis API can be used to request client certificates to authenticate to kube-apiserver (with the \"kubernetes.io/kube-apiserver-client\" signerName), or to obtain certificates from custom non-Kubernetes signers.",
)
