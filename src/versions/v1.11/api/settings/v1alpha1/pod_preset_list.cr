# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./pod_preset"

::K8S::Kubernetes::Resource.define_resource("settings.k8s.io", "v1alpha1", "PodPresetList",
  namespace: "::K8S::Api::Settings::V1alpha1",
  list: true,
  list_kind: K8S::Api::Settings::V1alpha1::PodPreset,
  description: "PodPresetList is a list of PodPreset objects.",
)
