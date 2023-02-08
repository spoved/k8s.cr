# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./object_reference"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Binding",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "target", kind: ::K8S::Api::Core::V1::ObjectReference, key: "target", nilable: false, read_only: false, description: "The target object that you want to bind to the standard object."},

  ],
  description: "Binding ties one object to another; for example, a pod is bound to a node by a scheduler. Deprecated in 1.7, please use the bindings subresource of pods instead.",
  versions: [{group: "", kind: "Binding", version: "v1"}],
)
