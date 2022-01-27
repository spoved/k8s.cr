# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestSpec; end

module K8S
  # Namespace holding the types for `Api::Certificates::V1beta1::CertificateSigningRequestSpec`.
  module Types::Api::Certificates::V1beta1::CertificateSigningRequestSpec
    # Extra information about the requesting user. See user.Info interface for details.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String)))
    # Group information about the requesting user. See user.Info interface for details.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String))
    # Base64-encoded PKCS#10 CSR data
    abstract def request : String?
    # :ditto:
    abstract def request! : String
    # :ditto:
    abstract def request? : String?
    # :ditto:
    abstract def request=(value : String)
    # Requested signer for the request. It is a qualified name in the form: [[`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)]([`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:))
    #  1. If it's a kubelet client certificate, it is assigned
    #     [["kubernetes.io/kube-apiserver-client-kubelet".]("kubernetes.io/kube-apiserver-client-kubelet".)](["kubernetes.io/kube-apiserver-client-kubelet".]("kubernetes.io/kube-apiserver-client-kubelet".))
    #  2. If it's a kubelet serving certificate, it is assigned
    #     [["kubernetes.io/kubelet-serving".]("kubernetes.io/kubelet-serving".)](["kubernetes.io/kubelet-serving".]("kubernetes.io/kubelet-serving".))
    #  3. Otherwise, it is assigned [["kubernetes.io/legacy-unknown".]("kubernetes.io/legacy-unknown".)](["kubernetes.io/legacy-unknown".]("kubernetes.io/legacy-unknown".))
    # Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.
    abstract def signer_name : String?
    # :ditto:
    abstract def signer_name! : String
    # :ditto:
    abstract def signer_name? : String?
    # :ditto:
    abstract def signer_name=(value : String)
    # UID information about the requesting user. See user.Info interface for details.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [[https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)](https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3))
    #      [[https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)](https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12))
    # Valid values are:
    #  "signing",
    #  "digital signature",
    #  "content commitment",
    #  "key encipherment",
    #  "key agreement",
    #  "data encipherment",
    #  "cert sign",
    #  "crl sign",
    #  "encipher only",
    #  "decipher only",
    #  "any",
    #  "server auth",
    #  "client auth",
    #  "code signing",
    #  "email protection",
    #  [["s/mime",]("s/mime",)](["s/mime",]("s/mime",))
    #  "ipsec end system",
    #  "ipsec tunnel",
    #  "ipsec user",
    #  "timestamping",
    #  "ocsp signing",
    #  "microsoft sgc",
    #  "netscape sgc"
    abstract def usages : ::Array(String)?
    # :ditto:
    abstract def usages! : ::Array(String)
    # :ditto:
    abstract def usages? : ::Array(String)?
    # :ditto:
    abstract def usages=(value : ::Array(String))
    # Information about the requesting user. See user.Info interface for details.
    abstract def username : String?
    # :ditto:
    abstract def username! : String
    # :ditto:
    abstract def username? : String?
    # :ditto:
    abstract def username=(value : String)
  end

  # This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Extra information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Group information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    request: {key: "request", accessor: "request", kind: "String", nilable: false, default: nil, read_only: false, description: "Base64-encoded PKCS#10 CSR data", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    signer_name: {key: "signerName", accessor: "signer_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Requested signer for the request. It is a qualified name in the form: [`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)\n 1. If it's a kubelet client certificate, it is assigned\n    [\"kubernetes.io/kube-apiserver-client-kubelet\".](\"kubernetes.io/kube-apiserver-client-kubelet\".)\n 2. If it's a kubelet serving certificate, it is assigned\n    [\"kubernetes.io/kubelet-serving\".](\"kubernetes.io/kubelet-serving\".)\n 3. Otherwise, it is assigned [\"kubernetes.io/legacy-unknown\".](\"kubernetes.io/legacy-unknown\".)\nDistribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    usages: {key: "usages", accessor: "usages", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)\nValid values are:\n \"signing\",\n \"digital signature\",\n \"content commitment\",\n \"key encipherment\",\n \"key agreement\",\n \"data encipherment\",\n \"cert sign\",\n \"crl sign\",\n \"encipher only\",\n \"decipher only\",\n \"any\",\n \"server auth\",\n \"client auth\",\n \"code signing\",\n \"email protection\",\n [\"s/mime\",](\"s/mime\",)\n \"ipsec end system\",\n \"ipsec tunnel\",\n \"ipsec user\",\n \"timestamping\",\n \"ocsp signing\",\n \"microsoft sgc\",\n \"netscape sgc\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "Information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestSpec
    k8s_object_accessor("extra", extra : ::Hash(String, ::Array(String)), true, false, "Extra information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("groups", groups : ::Array(String), true, false, "Group information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("request", request : String, false, false, "Base64-encoded PKCS#10 CSR data")
    k8s_object_accessor("signerName", signer_name : String, true, false, "Requested signer for the request. It is a qualified name in the form: [`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)\n 1. If it's a kubelet client certificate, it is assigned\n    [\"kubernetes.io/kube-apiserver-client-kubelet\".](\"kubernetes.io/kube-apiserver-client-kubelet\".)\n 2. If it's a kubelet serving certificate, it is assigned\n    [\"kubernetes.io/kubelet-serving\".](\"kubernetes.io/kubelet-serving\".)\n 3. Otherwise, it is assigned [\"kubernetes.io/legacy-unknown\".](\"kubernetes.io/legacy-unknown\".)\nDistribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.")
    k8s_object_accessor("uid", uid : String, true, false, "UID information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("usages", usages : ::Array(String), true, false, "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)\nValid values are:\n \"signing\",\n \"digital signature\",\n \"content commitment\",\n \"key encipherment\",\n \"key agreement\",\n \"data encipherment\",\n \"cert sign\",\n \"crl sign\",\n \"encipher only\",\n \"decipher only\",\n \"any\",\n \"server auth\",\n \"client auth\",\n \"code signing\",\n \"email protection\",\n [\"s/mime\",](\"s/mime\",)\n \"ipsec end system\",\n \"ipsec tunnel\",\n \"ipsec user\",\n \"timestamping\",\n \"ocsp signing\",\n \"microsoft sgc\",\n \"netscape sgc\"")
    k8s_object_accessor("username", username : String, true, false, "Information about the requesting user. See user.Info interface for details.")

    def initialize(*, extra : ::Hash(String, ::Array(String))? = nil, groups : ::Array(String)? = nil, request : String? = nil, signer_name : String? = nil, uid : String? = nil, usages : ::Array(String)? = nil, username : String? = nil)
      super()
      self.["extra"] = extra
      self.["groups"] = groups
      self.["request"] = request
      self.["signerName"] = signer_name
      self.["uid"] = uid
      self.["usages"] = usages
      self.["username"] = username
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String))},
      {key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "request", accessor: "request", nilable: false, read_only: false, default: nil, kind: String},
      {key: "signerName", accessor: "signer_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
      {key: "usages", accessor: "usages", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
