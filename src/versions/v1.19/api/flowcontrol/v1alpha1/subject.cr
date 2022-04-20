# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./group_subject"
require "./service_account_subject"
require "./user_subject"

::K8S::Kubernetes::Resource.define_object("Subject",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "group", kind: ::K8S::Api::Flowcontrol::V1alpha1::GroupSubject, key: "group", nilable: true, read_only: false, description: nil},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Required"},
    {name: "service_account", kind: ::K8S::Api::Flowcontrol::V1alpha1::ServiceAccountSubject, key: "serviceAccount", nilable: true, read_only: false, description: nil},
    {name: "user", kind: ::K8S::Api::Flowcontrol::V1alpha1::UserSubject, key: "user", nilable: true, read_only: false, description: nil},

  ]
)
