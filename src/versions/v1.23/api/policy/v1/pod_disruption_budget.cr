# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_disruption_budget_spec"
require "./pod_disruption_budget_status"

::K8S::Kubernetes::Resource.define_resource("policy", "v1", "PodDisruptionBudget",
  namespace: "::K8S::Api::Policy::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Policy::V1::PodDisruptionBudgetSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the PodDisruptionBudget."},
    {name: "status", kind: ::K8S::Api::Policy::V1::PodDisruptionBudgetStatus, key: "status", nilable: true, read_only: false, description: "Most recently observed status of the PodDisruptionBudget."},

  ],
  description: "PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods",
)
