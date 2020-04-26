# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Api::Authorization::V1::SelfSubjectAccessReviewSpec
    # NonResourceAttributes describes information for a non-resource access request
    property non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    property resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil

    ::YAML.mapping({
      non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
      resource_attributes:     {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
      resource_attributes:     {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
    }, true)

    def initialize(*, @non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil = nil)
    end
  end
end
