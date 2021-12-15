# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ClientIPConfig represents the configurations of Client IP based session affinity.
  @[::K8S::Properties(
    timeout_seconds: {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
  )]
  class Api::Core::V1::ClientIPConfig
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
    @[::JSON::Field(key: "timeoutSeconds", emit_null: false)]
    @[::YAML::Field(key: "timeoutSeconds", emit_null: false)]
    property timeout_seconds : Int32 | Nil

    def initialize(*, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
