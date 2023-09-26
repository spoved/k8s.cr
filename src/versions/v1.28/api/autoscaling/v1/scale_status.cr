# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ScaleStatus",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "replicas", kind: Int32, key: "replicas", nilable: false, read_only: false, description: "replicas is the actual number of observed instances of the scaled object."},
    {name: "selector", kind: String, key: "selector", nilable: true, read_only: false, description: "selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)"},

  ]
)
