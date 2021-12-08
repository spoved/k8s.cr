# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
  #
  # Kubelets use this API to obtain:
  #  1. client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client-kubelet" signerName).]("kubernetes.io/kube-apiserver-client-kubelet" signerName).)
  #  2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the ["kubernetes.io/kubelet-serving" signerName).]("kubernetes.io/kubelet-serving" signerName).)
  #
  # This API can be used to request client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.]("kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.)
  @[::K8S::GroupVersionKind(group: "certificates.k8s.io", kind: "CertificateSigningRequest", version: "v1", full: "io.k8s.api.certificates.v1.CertificateSigningRequest")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Certificates::V1::CertificateSigningRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
    status: {type: Api::Certificates::V1::CertificateSigningRequestStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  class Api::Certificates::V1::CertificateSigningRequest < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "certificates/v1"
    getter kind : String = "CertificateSigningRequest"
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec contains the certificate request, and is immutable after creation. Only the request, signerName, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
    @[::JSON::Field(key: "spec", emit_null: true)]
    @[::YAML::Field(key: "spec", emit_null: true)]
    property spec : Api::Certificates::V1::CertificateSigningRequestSpec

    # status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil

    def initialize(*, @spec : Api::Certificates::V1::CertificateSigningRequestSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil = nil)
    end
  end

  module Resources::Certificates::V1
    alias CertificateSigningRequest = ::K8S::Api::Certificates::V1::CertificateSigningRequest
  end
end