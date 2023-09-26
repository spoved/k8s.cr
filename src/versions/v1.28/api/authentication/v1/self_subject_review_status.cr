# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./user_info"

::K8S::Kubernetes::Resource.define_object("SelfSubjectReviewStatus",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "user_info", kind: ::K8S::Api::Authentication::V1::UserInfo, key: "userInfo", nilable: true, read_only: false, description: "User attributes of the user making this request."},

  ]
)
