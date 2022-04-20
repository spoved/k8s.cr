# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NonResourceRule",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "non_resource_urls", kind: ::Array(String), key: "nonResourceURLs", nilable: true, read_only: false, description: "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all."},
    {name: "verbs", kind: ::Array(String), key: "verbs", nilable: false, read_only: false, description: "Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all."},

  ]
)
