# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("StatefulSetOrdinals",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "start", kind: Int32, key: "start", nilable: true, read_only: false, description: "start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:\n  [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).\nIf unset, defaults to 0. Replica indices will be in the range:\n  [0, .spec.replicas)."},

  ]
)
