# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../../apimachinery/apis/meta/v1/delete_options"

::K8S::Kubernetes::Resource.define_resource("policy", "v1", "Eviction",
  namespace: "::K8S::Api::Policy::V1",
  properties: [

    {name: "delete_options", kind: ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions, key: "deleteOptions", nilable: true, read_only: false, description: "DeleteOptions may be provided"},

  ],
  description: "Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.",
  versions: [{group: "policy", kind: "Eviction", version: "v1"}],
)
