# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Api::Authorization::V1::SubjectAccessReviewSpec
    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    property extra : Hash(String, String) | Nil

    # Groups is the groups you're testing for.
    property groups : Array(String) | Nil

    # NonResourceAttributes describes information for a non-resource access request
    property non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    property resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil

    # UID information about the requesting user.
    property uid : String | Nil

    # User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
    property user : String | Nil

    ::YAML.mapping({
      extra:                   {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:                  {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
      resource_attributes:     {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
      uid:                     {type: String, nilable: true, key: "uid", getter: false, setter: false},
      user:                    {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      extra:                   {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:                  {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
      resource_attributes:     {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
      uid:                     {type: String, nilable: true, key: "uid", getter: false, setter: false},
      user:                    {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil = nil, @uid : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end
