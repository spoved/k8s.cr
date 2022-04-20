# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./pod_disruption_budget"

::K8S::Kubernetes::Resource.define_resource("policy", "v1", "PodDisruptionBudgetList",
  namespace: "::K8S::Api::Policy::V1",
  list: true,
  list_kind: K8S::Api::Policy::V1::PodDisruptionBudget,
  description: "PodDisruptionBudgetList is a collection of PodDisruptionBudgets.",
)
