# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./api_service_condition"

::K8S::Kubernetes::Resource.define_object("APIServiceStatus",
  namespace: "::K8S::KubeAggregator::Apis::Apiregistration::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition), key: "conditions", nilable: true, read_only: false, description: "Current service state of apiService."},

  ]
)
