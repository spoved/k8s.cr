# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_preset_spec"

::K8S::Kubernetes::Resource.define_resource("settings.k8s.io", "v1alpha1", "PodPreset",
  namespace: "::K8S::Api::Settings::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Settings::V1alpha1::PodPresetSpec, key: "spec", nilable: true, read_only: false, description: nil},

  ],
  description: "PodPreset is a policy resource that defines additional runtime requirements for a Pod.",
)
