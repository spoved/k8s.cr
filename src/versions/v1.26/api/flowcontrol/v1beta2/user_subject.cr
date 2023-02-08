# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("UserSubject",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "`name` is the username that matches, or \"*\" to match all usernames. Required."},

  ]
)
