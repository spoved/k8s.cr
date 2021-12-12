# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  @[::K8S::Properties(
    extra: {type: Hash(String, Array(String)), nilable: true, key: "extra", getter: false, setter: false},
    groups: {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
    request: {type: String, nilable: false, key: "request", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
    usages: {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
    username: {type: String, nilable: true, key: "username", getter: false, setter: false},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Extra information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "extra", emit_null: false)]
    @[::YAML::Field(key: "extra", emit_null: false)]
    property extra : Hash(String, Array(String)) | Nil

    # Group information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "groups", emit_null: false)]
    @[::YAML::Field(key: "groups", emit_null: false)]
    property groups : Array(String) | Nil

    # Base64-encoded PKCS#10 CSR data
    @[::JSON::Field(key: "request", emit_null: true)]
    @[::YAML::Field(key: "request", emit_null: true)]
    property request : String

    # UID information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)
    #      [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)
    @[::JSON::Field(key: "usages", emit_null: false)]
    @[::YAML::Field(key: "usages", emit_null: false)]
    property usages : Array(String) | Nil

    # Information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "username", emit_null: false)]
    @[::YAML::Field(key: "username", emit_null: false)]
    property username : String | Nil

    def initialize(*, @request : String, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @usages : Array | Nil = nil, @username : String | Nil = nil)
    end
  end
end
