# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  @[::K8S::Properties(
    certificate: {type: String, nilable: true, key: "certificate", getter: false, setter: false},
    conditions: {type: Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: "conditions", getter: false, setter: false},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # If request was approved, the controller will place the issued certificate here.
    @[::JSON::Field(key: "certificate", emit_null: false)]
    @[::YAML::Field(key: "certificate", emit_null: false)]
    property certificate : String | Nil

    # Conditions applied to the request, such as approval or denial.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil

    def initialize(*, @certificate : String | Nil = nil, @conditions : Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil = nil)
    end
  end
end
