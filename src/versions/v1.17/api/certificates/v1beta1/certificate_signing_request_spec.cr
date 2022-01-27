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
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Group information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    request: {key: "request", accessor: "request", kind: "String", nilable: false, default: nil, read_only: false, description: "Base64-encoded PKCS#10 CSR data", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    usages: {key: "usages", accessor: "usages", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "Information about the requesting user. See user.Info interface for details.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Certificates::V1beta1::CertificateSigningRequestSpec
    k8s_object_accessor("extra", extra : ::Hash(String, ::Array(String)), true, false, "Extra information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("groups", groups : ::Array(String), true, false, "Group information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("request", request : String, false, false, "Base64-encoded PKCS#10 CSR data")
    k8s_object_accessor("uid", uid : String, true, false, "UID information about the requesting user. See user.Info interface for details.")
    k8s_object_accessor("usages", usages : ::Array(String), true, false, "allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)\n     [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)")
    k8s_object_accessor("username", username : String, true, false, "Information about the requesting user. See user.Info interface for details.")

    def initialize(*, extra : ::Hash(String, ::Array(String))? = nil, groups : ::Array(String)? = nil, request : String? = nil, uid : String? = nil, usages : ::Array(String)? = nil, username : String? = nil)
      super()
      self.["extra"] = extra
      self.["groups"] = groups
      self.["request"] = request
      self.["uid"] = uid
      self.["usages"] = usages
      self.["username"] = username
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String))},
      {key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "request", accessor: "request", nilable: false, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
      {key: "usages", accessor: "usages", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
