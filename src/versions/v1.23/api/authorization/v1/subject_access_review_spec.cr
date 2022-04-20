# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./non_resource_attributes"
require "./resource_attributes"

::K8S::Kubernetes::Resource.define_object("SubjectAccessReviewSpec",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "extra", kind: ::Hash(String, ::Array(String)), key: "extra", nilable: true, read_only: false, description: "Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here."},
    {name: "groups", kind: ::Array(String), key: "groups", nilable: true, read_only: false, description: "Groups is the groups you're testing for."},
    {name: "non_resource_attributes", kind: ::K8S::Api::Authorization::V1::NonResourceAttributes, key: "nonResourceAttributes", nilable: true, read_only: false, description: "NonResourceAttributes describes information for a non-resource access request"},
    {name: "resource_attributes", kind: ::K8S::Api::Authorization::V1::ResourceAttributes, key: "resourceAttributes", nilable: true, read_only: false, description: "ResourceAuthorizationAttributes describes information for a resource access request"},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID information about the requesting user."},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups"},

  ]
)
