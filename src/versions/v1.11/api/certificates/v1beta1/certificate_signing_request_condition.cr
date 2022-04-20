# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestCondition",
  namespace: "::K8S::Api::Certificates::V1beta1",
  properties: [

    {name: "last_update_time", kind: ::Time, key: "lastUpdateTime", nilable: true, read_only: false, description: "timestamp for the last update to this condition"},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "human readable message with details about the request state"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "brief reason for the request state"},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "request approval state, currently Approved or Denied."},

  ]
)
