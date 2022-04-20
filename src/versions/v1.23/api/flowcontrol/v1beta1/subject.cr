# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./group_subject"
require "./service_account_subject"
require "./user_subject"

::K8S::Kubernetes::Resource.define_object("Subject",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  properties: [

    {name: "group", kind: ::K8S::Api::Flowcontrol::V1beta1::GroupSubject, key: "group", nilable: true, read_only: false, description: "`group` matches based on user group name."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "`kind` indicates which one of the other fields is non-empty. Required"},
    {name: "service_account", kind: ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject, key: "serviceAccount", nilable: true, read_only: false, description: "`serviceAccount` matches ServiceAccounts."},
    {name: "user", kind: ::K8S::Api::Flowcontrol::V1beta1::UserSubject, key: "user", nilable: true, read_only: false, description: "`user` matches based on username."},

  ]
)
