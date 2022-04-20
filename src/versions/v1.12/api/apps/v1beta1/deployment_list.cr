# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./deployment"

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta1", "DeploymentList",
  namespace: "::K8S::Api::Apps::V1beta1",
  list: true,
  list_kind: K8S::Api::Apps::V1beta1::Deployment,
  description: "DeploymentList is a list of Deployments.",
)
