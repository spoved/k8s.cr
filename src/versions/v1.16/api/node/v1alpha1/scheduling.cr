# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/toleration"

::K8S::Kubernetes::Resource.define_object("Scheduling",
  namespace: "::K8S::Api::Node::V1alpha1",
  properties: [

    {name: "node_selector", kind: ::Hash(String, String), key: "nodeSelector", nilable: true, read_only: false, description: "nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission."},
    {name: "tolerations", kind: ::Array(::K8S::Api::Core::V1::Toleration), key: "tolerations", nilable: true, read_only: false, description: "tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass."},

  ]
)
