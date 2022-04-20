# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./limit_response"

::K8S::Kubernetes::Resource.define_object("LimitedPriorityLevelConfiguration",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "assured_concurrency_shares", kind: Int32, key: "assuredConcurrencyShares", nilable: true, read_only: false, description: "`assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:\n\n            ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )\n\nbigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30."},
    {name: "limit_response", kind: ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse, key: "limitResponse", nilable: true, read_only: false, description: "`limitResponse` indicates what to do with requests that can not be executed right now"},

  ]
)
