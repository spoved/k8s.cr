# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestCondition",
  namespace: "::K8S::Api::Certificates::V1beta1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time."},
    {name: "last_update_time", kind: ::Time, key: "lastUpdateTime", nilable: true, read_only: false, description: "timestamp for the last update to this condition"},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "human readable message with details about the request state"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "brief reason for the request state"},
    {name: "status", kind: String, key: "status", nilable: true, read_only: false, description: "Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\". Defaults to \"True\". If unset, should be treated as \"True\"."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type of the condition. Known conditions include \"Approved\", \"Denied\", and \"Failed\"."},

  ]
)
