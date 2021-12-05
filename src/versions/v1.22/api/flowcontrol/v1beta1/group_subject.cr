# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # GroupSubject holds detailed information for group-kind subject.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::GroupSubject
    include ::JSON::Serializable
    include ::YAML::Serializable

    # name is the user group that matches, or "*" to match all user groups. See [https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)
    property name : String

    def initialize(*, @name : String)
    end
  end
end
