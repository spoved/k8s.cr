# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../../apimachinery/apis/meta/v1/object_meta"
require "./api_service_spec"
require "./api_service_status"

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1", "APIService",
  namespace: "::K8S::KubeAggregator::Apis::Apiregistration::V1",
  properties: [

    {name: "spec", kind: ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec, key: "spec", nilable: true, read_only: false, description: "Spec contains information for locating and communicating with a server"},
    {name: "status", kind: ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus, key: "status", nilable: true, read_only: false, description: "Status contains derived information about an API server"},

  ],
  description: "APIService represents a server for a particular GroupVersion. Name must be \"version.group\".",
)
