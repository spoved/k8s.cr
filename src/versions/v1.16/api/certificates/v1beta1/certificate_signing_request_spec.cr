# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestSpec",
  namespace: "::K8S::Api::Certificates::V1beta1",
  properties: [

    {name: "extra", kind: ::Hash(String, ::Array(String)), key: "extra", nilable: true, read_only: false, description: "Extra information about the requesting user. See user.Info interface for details."},
    {name: "groups", kind: ::Array(String), key: "groups", nilable: true, read_only: false, description: "Group information about the requesting user. See user.Info interface for details."},
    {name: "request", kind: String, key: "request", nilable: false, read_only: false, description: "Base64-encoded PKCS#10 CSR data"},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID information about the requesting user. See user.Info interface for details."},
    {name: "usages", kind: ::Array(String), key: "usages", nilable: true, read_only: false, description: "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)"},
    {name: "username", kind: String, key: "username", nilable: true, read_only: false, description: "Information about the requesting user. See user.Info interface for details."},

  ]
)
