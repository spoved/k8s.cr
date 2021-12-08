# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  @[::K8S::Properties(
    extra: {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
    groups: {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
    non_resource_attributes: {type: Api::Authorization::V1::NonResourceAttributes, nilable: true, key: "nonResourceAttributes", getter: false, setter: false},
    resource_attributes: {type: Api::Authorization::V1::ResourceAttributes, nilable: true, key: "resourceAttributes", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
    user: {type: String, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Authorization::V1::SubjectAccessReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    @[::JSON::Field(key: "extra", emit_null: false)]
    @[::YAML::Field(key: "extra", emit_null: false)]
    property extra : Hash(String, String) | Nil

    # Groups is the groups you're testing for.
    @[::JSON::Field(key: "groups", emit_null: false)]
    @[::YAML::Field(key: "groups", emit_null: false)]
    property groups : Array(String) | Nil

    # NonResourceAttributes describes information for a non-resource access request
    @[::JSON::Field(key: "nonResourceAttributes", emit_null: false)]
    @[::YAML::Field(key: "nonResourceAttributes", emit_null: false)]
    property non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    @[::JSON::Field(key: "resourceAttributes", emit_null: false)]
    @[::YAML::Field(key: "resourceAttributes", emit_null: false)]
    property resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil

    # UID information about the requesting user.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    # User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil = nil, @uid : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end