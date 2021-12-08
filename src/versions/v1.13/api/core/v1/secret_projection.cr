# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Adapts a secret into a projected volume.
  #
  # The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
  @[::K8S::Properties(
    items: {type: Array(Api::Core::V1::KeyToPath), nilable: true, key: "items", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
  )]
  class Api::Core::V1::SecretProjection
    include ::JSON::Serializable
    include ::YAML::Serializable

    # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    @[::JSON::Field(key: "items", emit_null: false)]
    @[::YAML::Field(key: "items", emit_null: false)]
    property items : Array(Api::Core::V1::KeyToPath) | Nil

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Specify whether the Secret or its key must be defined
    @[::JSON::Field(key: "optional", emit_null: false)]
    @[::YAML::Field(key: "optional", emit_null: false)]
    property optional : Bool | Nil

    def initialize(*, @items : Array | Nil = nil, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
