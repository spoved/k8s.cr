# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TokenRequest",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "audience", kind: String, key: "audience", nilable: false, read_only: false, description: "Audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver."},
    {name: "expiration_seconds", kind: Int32, key: "expirationSeconds", nilable: true, read_only: false, description: "ExpirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\"."},

  ]
)
