# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodReadinessGate",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "condition_type", kind: String, key: "conditionType", nilable: false, read_only: false, description: "ConditionType refers to a condition in the pod's condition list with matching type.\n\nPossible enum values:\n - `\"ContainersReady\"` indicates whether all containers in the pod are ready.\n - `\"Initialized\"` means that all init containers in the pod have started successfully.\n - `\"PodScheduled\"` represents status of the scheduling process for this pod.\n - `\"Ready\"` means the pod is able to service requests and should be added to the load balancing pools of all matching services."},

  ]
)
