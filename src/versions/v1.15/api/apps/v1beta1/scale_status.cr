# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ScaleStatus",
  namespace: "::K8S::Api::Apps::V1beta1",
  properties: [

    {name: "replicas", kind: Int32, key: "replicas", nilable: false, read_only: false, description: "actual number of observed instances of the scaled object."},
    {name: "selector", kind: ::Hash(String, String), key: "selector", nilable: true, read_only: false, description: "label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)"},
    {name: "target_selector", kind: String, key: "targetSelector", nilable: true, read_only: false, description: "label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},

  ]
)
