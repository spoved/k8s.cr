# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AllowedHostPath defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined.
  @[::K8S::Properties(
    path_prefix: {type: String, nilable: true, key: "pathPrefix", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
  )]
  class Api::Policy::V1beta1::AllowedHostPath
    include ::JSON::Serializable
    include ::YAML::Serializable

    # pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
    #
    # Examples: [`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`](`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`)
    @[::JSON::Field(key: "pathPrefix", emit_null: false)]
    @[::YAML::Field(key: "pathPrefix", emit_null: false)]
    property path_prefix : String | Nil

    # when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly.
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    def initialize(*, @path_prefix : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
