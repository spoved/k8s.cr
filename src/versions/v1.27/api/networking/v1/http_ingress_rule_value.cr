# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./http_ingress_path"

::K8S::Kubernetes::Resource.define_object("HTTPIngressRuleValue",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "paths", kind: ::Array(::K8S::Api::Networking::V1::HTTPIngressPath), key: "paths", nilable: false, read_only: false, description: "paths is a collection of paths that map requests to backends."},

  ]
)
