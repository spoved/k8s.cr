# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("GroupSubject",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the user group that matches, or \"*\" to match all user groups. See [https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)"},

  ]
)
