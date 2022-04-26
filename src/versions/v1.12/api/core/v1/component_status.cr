# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./component_condition"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ComponentStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::ComponentCondition), key: "conditions", nilable: true, read_only: false, description: "List of component conditions observed"},

  ],
  description: "ComponentStatus (and ComponentStatusList) holds the cluster validation info.",
  versions: [{group: "", kind: "ComponentStatus", version: "v1"}],
)
