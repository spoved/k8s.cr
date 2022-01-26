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
    abstract def extra=(value : ::Hash(String, ::Array(String))?)
    # Group information about the requesting user. See user.Info interface for details.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String)?)
    # Base64-encoded PKCS#10 CSR data
    abstract def request : String
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
    abstract def signer_name=(value : String?)
    # UID information about the requesting user. See user.Info interface for details.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [[https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)](https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3))
    #      [[https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)](https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12))
    abstract def usages : ::Array(String)?
    # :ditto:
    abstract def usages! : ::Array(String)
    # :ditto:
    abstract def usages? : ::Array(String)?
    # :ditto:
    abstract def usages=(value : ::Array(String)?)
    # Information about the requesting user. See user.Info interface for details.
    abstract def username : String?
    # :ditto:
    abstract def username! : String
    # :ditto:
    abstract def username? : String?
    # :ditto:
    abstract def username=(value : String?)
  end

  # This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Extra information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Group information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    request: {key: "request", accessor: "request", kind: "String", nilable: false, default: nil, read_only: false, description: "Base64-encoded PKCS#10 CSR data", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    signer_name: {key: "signerName", accessor: "signer_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Requested signer for the request. It is a qualified name in the form: [`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)\n 1. If it's a kubelet client certificate, it is assigned\n    [\"kubernetes.io/kube-apiserver-client-kubelet\".](\"kubernetes.io/kube-apiserver-client-kubelet\".)\n 2. If it's a kubelet serving certificate, it is assigned\n    [\"kubernetes.io/kubelet-serving\".](\"kubernetes.io/kubelet-serving\".)\n 3. Otherwise, it is assigned [\"kubernetes.io/legacy-unknown\".](\"kubernetes.io/legacy-unknown\".)\nDistribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    usages: {key: "usages", accessor: "usages", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "Information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestSpec

    # Extra information about the requesting user. See user.Info interface for details.
    def extra : ::Hash(String, ::Array(String))?
      self.["extra"].as(::Hash(String, ::Array(String))?)
    end

    # :ditto:
    def extra! : ::Hash(String, ::Array(String))
      self.["extra"].as(::Hash(String, ::Array(String))?).not_nil!
    end

    # :ditto:
    def extra? : ::Hash(String, ::Array(String))?
      self.["extra"]?.as(::Hash(String, ::Array(String))?)
    end

    # :ditto:
    def extra=(value : ::Hash(String, ::Array(String))?)
      self.["extra"] = value
    end

    # Group information about the requesting user. See user.Info interface for details.
    def groups : ::Array(String)?
      self.["groups"].as(::Array(String)?)
    end

    # :ditto:
    def groups! : ::Array(String)
      self.["groups"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def groups? : ::Array(String)?
      self.["groups"]?.as(::Array(String)?)
    end

    # :ditto:
    def groups=(value : ::Array(String)?)
      self.["groups"] = value
    end

    # Base64-encoded PKCS#10 CSR data
    def request : String
      self.["request"].as(String)
    end

    # :ditto:
    def request! : String
      self.["request"].as(String).not_nil!
    end

    # :ditto:
    def request? : String?
      self.["request"]?.as(String?)
    end

    # :ditto:
    def request=(value : String)
      self.["request"] = value
    end

    # Requested signer for the request. It is a qualified name in the form: [[`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)]([`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:))
    #  1. If it's a kubelet client certificate, it is assigned
    #     [["kubernetes.io/kube-apiserver-client-kubelet".]("kubernetes.io/kube-apiserver-client-kubelet".)](["kubernetes.io/kube-apiserver-client-kubelet".]("kubernetes.io/kube-apiserver-client-kubelet".))
    #  2. If it's a kubelet serving certificate, it is assigned
    #     [["kubernetes.io/kubelet-serving".]("kubernetes.io/kubelet-serving".)](["kubernetes.io/kubelet-serving".]("kubernetes.io/kubelet-serving".))
    #  3. Otherwise, it is assigned [["kubernetes.io/legacy-unknown".]("kubernetes.io/legacy-unknown".)](["kubernetes.io/legacy-unknown".]("kubernetes.io/legacy-unknown".))
    # Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.
    def signer_name : String?
      self.["signerName"].as(String?)
    end

    # :ditto:
    def signer_name! : String
      self.["signerName"].as(String?).not_nil!
    end

    # :ditto:
    def signer_name? : String?
      self.["signerName"]?.as(String?)
    end

    # :ditto:
    def signer_name=(value : String?)
      self.["signerName"] = value
    end

    # UID information about the requesting user. See user.Info interface for details.
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [[https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)](https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3))
    #      [[https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)](https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12))
    def usages : ::Array(String)?
      self.["usages"].as(::Array(String)?)
    end

    # :ditto:
    def usages! : ::Array(String)
      self.["usages"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def usages? : ::Array(String)?
      self.["usages"]?.as(::Array(String)?)
    end

    # :ditto:
    def usages=(value : ::Array(String)?)
      self.["usages"] = value
    end

    # Information about the requesting user. See user.Info interface for details.
    def username : String?
      self.["username"].as(String?)
    end

    # :ditto:
    def username! : String
      self.["username"].as(String?).not_nil!
    end

    # :ditto:
    def username? : String?
      self.["username"]?.as(String?)
    end

    # :ditto:
    def username=(value : String?)
      self.["username"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String)) },
        { key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "request", accessor: "request", nilable: false, read_only: false, default: nil, kind: String },
        { key: "signerName", accessor: "signer_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
        { key: "usages", accessor: "usages", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
