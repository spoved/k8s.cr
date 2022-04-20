# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./component_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ComponentStatusList",
  namespace: "::K8S::Api::Core::V1",
  list: true,
  list_kind: K8S::Api::Core::V1::ComponentStatus,
  description: "Status of all the conditions for the component as a list of ComponentStatus objects.",
)
