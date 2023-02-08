# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./deployment_spec"
require "./deployment_status"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "Deployment",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apps::V1::DeploymentSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the Deployment."},
    {name: "status", kind: ::K8S::Api::Apps::V1::DeploymentStatus, key: "status", nilable: true, read_only: false, description: "Most recently observed status of the Deployment."},

  ],
  description: "Deployment enables declarative updates for Pods and ReplicaSets.",
  versions: [{group: "apps", kind: "Deployment", version: "v1"}],
)
