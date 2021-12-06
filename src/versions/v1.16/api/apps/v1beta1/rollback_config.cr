# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DEPRECATED.
  @[::K8S::Properties(
    revision: {type: Int32, nilable: true, key: "revision", getter: false, setter: false},
  )]
  class Api::Apps::V1beta1::RollbackConfig
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The revision to rollback to. If set to 0, rollback to the last revision.
    @[::JSON::Field(key: "revision", emit_null: false)]
    @[::YAML::Field(key: "revision", emit_null: false)]
    property revision : Int32 | Nil

    def initialize(*, @revision : Int32 | Nil = nil)
    end
  end
end
