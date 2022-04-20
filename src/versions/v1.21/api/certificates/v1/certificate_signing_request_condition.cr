# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestCondition",
  namespace: "::K8S::Api::Certificates::V1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time."},
    {name: "last_update_time", kind: ::Time, key: "lastUpdateTime", nilable: true, read_only: false, description: "lastUpdateTime is the time of the last update to this condition"},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "message contains a human readable message with details about the request state"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "reason indicates a brief reason for the request state"},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\"."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".\n\nAn \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.\n\nA \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.\n\nA \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.\n\nApproved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.\n\nOnly one condition of a given type is allowed."},

  ]
)
