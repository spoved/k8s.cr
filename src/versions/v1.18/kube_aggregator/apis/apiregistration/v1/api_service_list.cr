# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../../apimachinery/apis/meta/v1/list_meta"
require "./api_service"

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1", "APIServiceList",
  namespace: "::K8S::KubeAggregator::Apis::Apiregistration::V1",
  list: true,
  list_kind: K8S::KubeAggregator::Apis::Apiregistration::V1::APIService,
  description: "APIServiceList is a list of APIService objects.",
)
