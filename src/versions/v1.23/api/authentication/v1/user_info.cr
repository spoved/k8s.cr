# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("UserInfo",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "extra", kind: ::Hash(String, ::Array(String)), key: "extra", nilable: true, read_only: false, description: "Any additional information provided by the authenticator."},
    {name: "groups", kind: ::Array(String), key: "groups", nilable: true, read_only: false, description: "The names of groups this user is a part of."},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs."},
    {name: "username", kind: String, key: "username", nilable: true, read_only: false, description: "The name that uniquely identifies this user among all active users."},

  ]
)
