# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Certificates::V1::CertificateSigningRequestSpec; end

module K8S
  # Namespace holding the types for `Api::Certificates::V1::CertificateSigningRequestSpec`.
  module Types::Api::Certificates::V1::CertificateSigningRequestSpec
    alias ValueType = Int32 | ::Hash(String, ::Array(String)) | ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.
    #
    # The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.
    #
    # Certificate signers may not honor this field for various reasons:
    #
    #   1. Old signer that is unaware of the field (such as the in-tree
    #      implementations prior to v1.22)
    #   2. Signer whose configured maximum is shorter than the requested duration
    #   3. Signer whose configured minimum is longer than the requested duration
    #
    # The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
    #
    # As of v1.22, this field is beta and is controlled via the CSRDuration feature gate.
    abstract def expiration_seconds : Int32?
    # :ditto:
    abstract def expiration_seconds! : Int32
    # :ditto:
    abstract def expiration_seconds? : Int32?
    # :ditto:
    abstract def expiration_seconds=(value : Int32?)
    # extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String))?)
    # groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String)?)
    # request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
    abstract def request : String
    # :ditto:
    abstract def request! : String
    # :ditto:
    abstract def request? : String?
    # :ditto:
    abstract def request=(value : String)
    # signerName indicates the requested signer, and is a qualified name.
    #
    # [[List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.)]([List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.))
    #
    # Well-known Kubernetes signers are:
    #  1. [["kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.)](["kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.))
    #   Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
    #  2. [["kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.)](["kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.))
    #   Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #  3. [["kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.]("kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.)](["kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.]("kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.))
    #   Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #
    # More details are available at [[https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers)](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers))
    #
    # Custom signerNames can also be specified. The signer defines:
    #  1. Trust distribution: how trust (CA bundles) are distributed.
    #  2. Permitted subjects: and behavior when a disallowed subject is requested.
    #  3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
    #  4. Required, permitted, or forbidden key usages / extended key usages.
    #  5. [[Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.)]([Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.))
    #  6. Whether or not requests for CA certificates are allowed.
    abstract def signer_name : String
    # :ditto:
    abstract def signer_name! : String
    # :ditto:
    abstract def signer_name? : String?
    # :ditto:
    abstract def signer_name=(value : String)
    # uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
    # usages specifies a set of key usages requested in the issued certificate.
    #
    # Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
    #
    # Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
    #
    # Valid values are:
    #  "signing", "digital signature", "content commitment",
    #  "key encipherment", "key agreement", "data encipherment",
    #  "cert sign", "crl sign", "encipher only", "decipher only", "any",
    #  "server auth", "client auth",
    #  "code signing", "email protection", [["s/mime",]("s/mime",)](["s/mime",]("s/mime",))
    #  "ipsec end system", "ipsec tunnel", "ipsec user",
    #  "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
    abstract def usages : ::Array(String)?
    # :ditto:
    abstract def usages! : ::Array(String)
    # :ditto:
    abstract def usages? : ::Array(String)?
    # :ditto:
    abstract def usages=(value : ::Array(String)?)
    # username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    abstract def username : String?
    # :ditto:
    abstract def username! : String
    # :ditto:
    abstract def username? : String?
    # :ditto:
    abstract def username=(value : String?)
  end

  # CertificateSigningRequestSpec contains the certificate request.
  @[::K8S::Properties(
    expiration_seconds: {key: "expirationSeconds", accessor: "expiration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.\n\nThe v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.\n\nCertificate signers may not honor this field for various reasons:\n\n  1. Old signer that is unaware of the field (such as the in-tree\n     implementations prior to v1.22)\n  2. Signer whose configured maximum is shorter than the requested duration\n  3. Signer whose configured minimum is longer than the requested duration\n\nThe minimum valid value for expirationSeconds is 600, i.e. 10 minutes.\n\nAs of v1.22, this field is beta and is controlled via the CSRDuration feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    request: {key: "request", accessor: "request", kind: "String", nilable: false, default: nil, read_only: false, description: "request contains an x509 certificate signing request encoded in a \"CERTIFICATE REQUEST\" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    signer_name: {key: "signerName", accessor: "signer_name", kind: "String", nilable: false, default: nil, read_only: false, description: "signerName indicates the requested signer, and is a qualified name.\n\n[List/watch requests for CertificateSigningRequests can filter on this field using a \"spec.signerName=NAME\" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a \"spec.signerName=NAME\" fieldSelector.)\n\nWell-known Kubernetes signers are:\n 1. [\"kubernetes.io/kube-apiserver-client\": issues client certificates that can be used to authenticate to kube-apiserver.](\"kubernetes.io/kube-apiserver-client\": issues client certificates that can be used to authenticate to kube-apiserver.)\n  Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the \"csrsigning\" controller in kube-controller-manager.\n 2. [\"kubernetes.io/kube-apiserver-client-kubelet\": issues client certificates that kubelets use to authenticate to kube-apiserver.](\"kubernetes.io/kube-apiserver-client-kubelet\": issues client certificates that kubelets use to authenticate to kube-apiserver.)\n  Requests for this signer can be auto-approved by the \"csrapproving\" controller in kube-controller-manager, and can be issued by the \"csrsigning\" controller in kube-controller-manager.\n 3. [\"kubernetes.io/kubelet-serving\" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.](\"kubernetes.io/kubelet-serving\" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.)\n  Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the \"csrsigning\" controller in kube-controller-manager.\n\nMore details are available at [https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers)\n\nCustom signerNames can also be specified. The signer defines:\n 1. Trust distribution: how trust (CA bundles) are distributed.\n 2. Permitted subjects: and behavior when a disallowed subject is requested.\n 3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.\n 4. Required, permitted, or forbidden key usages / extended key usages.\n 5. [Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.)\n 6. Whether or not requests for CA certificates are allowed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    usages: {key: "usages", accessor: "usages", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "usages specifies a set of key usages requested in the issued certificate.\n\nRequests for TLS client certificates typically request: \"digital signature\", \"key encipherment\", \"client auth\".\n\nRequests for TLS serving certificates typically request: \"key encipherment\", \"digital signature\", \"server auth\".\n\nValid values are:\n \"signing\", \"digital signature\", \"content commitment\",\n \"key encipherment\", \"key agreement\", \"data encipherment\",\n \"cert sign\", \"crl sign\", \"encipher only\", \"decipher only\", \"any\",\n \"server auth\", \"client auth\",\n \"code signing\", \"email protection\", [\"s/mime\",](\"s/mime\",)\n \"ipsec end system\", \"ipsec tunnel\", \"ipsec user\",\n \"timestamping\", \"ocsp signing\", \"microsoft sgc\", \"netscape sgc\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1::CertificateSigningRequestSpec < ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestSpec::Instance
    include ::K8S::Types::Api::Certificates::V1::CertificateSigningRequestSpec
    include ::K8S::Kubernetes::Object

    # expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.
    #
    # The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.
    #
    # Certificate signers may not honor this field for various reasons:
    #
    #   1. Old signer that is unaware of the field (such as the in-tree
    #      implementations prior to v1.22)
    #   2. Signer whose configured maximum is shorter than the requested duration
    #   3. Signer whose configured minimum is longer than the requested duration
    #
    # The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
    #
    # As of v1.22, this field is beta and is controlled via the CSRDuration feature gate.
    def expiration_seconds : Int32?
      self.["expirationSeconds"].as(Int32?)
    end

    # :ditto:
    def expiration_seconds! : Int32
      self.["expirationSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def expiration_seconds? : Int32?
      self.["expirationSeconds"]?.as(Int32?)
    end

    # :ditto:
    def expiration_seconds=(value : Int32?)
      self.["expirationSeconds"] = value
    end

    # extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
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

    # groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
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

    # request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
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

    # signerName indicates the requested signer, and is a qualified name.
    #
    # [[List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.)]([List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.))
    #
    # Well-known Kubernetes signers are:
    #  1. [["kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.)](["kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.))
    #   Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
    #  2. [["kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.)](["kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.))
    #   Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #  3. [["kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.]("kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.)](["kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.]("kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.))
    #   Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #
    # More details are available at [[https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers)](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers))
    #
    # Custom signerNames can also be specified. The signer defines:
    #  1. Trust distribution: how trust (CA bundles) are distributed.
    #  2. Permitted subjects: and behavior when a disallowed subject is requested.
    #  3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
    #  4. Required, permitted, or forbidden key usages / extended key usages.
    #  5. [[Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.)]([Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.))
    #  6. Whether or not requests for CA certificates are allowed.
    def signer_name : String
      self.["signerName"].as(String)
    end

    # :ditto:
    def signer_name! : String
      self.["signerName"].as(String).not_nil!
    end

    # :ditto:
    def signer_name? : String?
      self.["signerName"]?.as(String?)
    end

    # :ditto:
    def signer_name=(value : String)
      self.["signerName"] = value
    end

    # uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
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

    # usages specifies a set of key usages requested in the issued certificate.
    #
    # Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
    #
    # Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
    #
    # Valid values are:
    #  "signing", "digital signature", "content commitment",
    #  "key encipherment", "key agreement", "data encipherment",
    #  "cert sign", "crl sign", "encipher only", "decipher only", "any",
    #  "server auth", "client auth",
    #  "code signing", "email protection", [["s/mime",]("s/mime",)](["s/mime",]("s/mime",))
    #  "ipsec end system", "ipsec tunnel", "ipsec user",
    #  "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
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

    # username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
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
        { key: "expirationSeconds", accessor: "expiration_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String)) },
        { key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "request", accessor: "request", nilable: false, read_only: false, default: nil, kind: String },
        { key: "signerName", accessor: "signer_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
        { key: "usages", accessor: "usages", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
