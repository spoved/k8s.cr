# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("WebhookThrottleConfig",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  properties: [

    {name: "burst", kind: Int32, key: "burst", nilable: true, read_only: false, description: "ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS"},
    {name: "qps", kind: Int32, key: "qps", nilable: true, read_only: false, description: "ThrottleQPS maximum number of batches per second default 10 QPS"},

  ]
)
