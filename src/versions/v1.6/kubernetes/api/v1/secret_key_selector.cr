# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # SecretKeySelector selects a key of a Secret.
  class Kubernetes::Api::V1::SecretKeySelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The key of the secret to select from.  Must be a valid secret key.
    property key : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String | Nil

    # Specify whether the Secret or it's key must be defined
    property optional : Bool | Nil

    ::YAML.mapping({
      key:      {type: String, nilable: false, key: "key", getter: false, setter: false},
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      key:      {type: String, nilable: false, key: "key", getter: false, setter: false},
      name:     {type: String, nilable: true, key: "name", getter: false, setter: false},
      optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
    }, true)

    def initialize(*, @key : String, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
