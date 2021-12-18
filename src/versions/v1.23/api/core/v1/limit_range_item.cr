# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LimitRangeItem defines a [min/max usage limit for any resource that matches on kind.](min/max usage limit for any resource that matches on kind.)
  @[::K8S::Properties(
    default: {type: Hash(String, Int32 | String), nilable: true, key: "default", getter: false, setter: false},
    default_request: {type: Hash(String, Int32 | String), nilable: true, key: "defaultRequest", getter: false, setter: false},
    max: {type: Hash(String, Int32 | String), nilable: true, key: "max", getter: false, setter: false},
    max_limit_request_ratio: {type: Hash(String, Int32 | String), nilable: true, key: "maxLimitRequestRatio", getter: false, setter: false},
    min: {type: Hash(String, Int32 | String), nilable: true, key: "min", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::LimitRangeItem
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Default resource requirement limit value by resource name if resource limit is omitted.
    @[::JSON::Field(key: "default", emit_null: false)]
    @[::YAML::Field(key: "default", emit_null: false)]
    property default : Hash(String, Int32 | String) | Nil

    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    @[::JSON::Field(key: "defaultRequest", emit_null: false)]
    @[::YAML::Field(key: "defaultRequest", emit_null: false)]
    property default_request : Hash(String, Int32 | String) | Nil

    # Max usage constraints on this kind by resource name.
    @[::JSON::Field(key: "max", emit_null: false)]
    @[::YAML::Field(key: "max", emit_null: false)]
    property max : Hash(String, Int32 | String) | Nil

    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    @[::JSON::Field(key: "maxLimitRequestRatio", emit_null: false)]
    @[::YAML::Field(key: "maxLimitRequestRatio", emit_null: false)]
    property max_limit_request_ratio : Hash(String, Int32 | String) | Nil

    # Min usage constraints on this kind by resource name.
    @[::JSON::Field(key: "min", emit_null: false)]
    @[::YAML::Field(key: "min", emit_null: false)]
    property min : Hash(String, Int32 | String) | Nil

    # Type of resource that this limit applies to.
    #
    # Possible enum values:
    #  - `"Container"` Limit that applies to all containers in a namespace
    #  - `"PersistentVolumeClaim"` Limit that applies to all persistent volume claims in a namespace
    #  - `"Pod"` Limit that applies to all pods in a namespace
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String, @default : Hash(String, Int32 | String) | Nil = nil, @default_request : Hash(String, Int32 | String) | Nil = nil, @max : Hash(String, Int32 | String) | Nil = nil, @max_limit_request_ratio : Hash(String, Int32 | String) | Nil = nil, @min : Hash(String, Int32 | String) | Nil = nil)
    end
  end
end
