# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  @[::K8S::Properties(
    non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
    resource_attributes: {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
  )]
  class Api::Authorization::V1::SelfSubjectAccessReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # NonResourceAttributes describes information for a non-resource access request
    @[::JSON::Field(key: "nonResourceAttributes", emit_null: false)]
    @[::YAML::Field(key: "nonResourceAttributes", emit_null: false)]
    property non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    @[::JSON::Field(key: "resourceAttributes", emit_null: false)]
    @[::YAML::Field(key: "resourceAttributes", emit_null: false)]
    property resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil

    def initialize(*, @non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil = nil)
    end
  end
end
