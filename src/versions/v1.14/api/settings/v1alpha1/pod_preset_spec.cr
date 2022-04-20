# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/env_var"
require "../../core/v1/env_from_source"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/volume_mount"
require "../../core/v1/volume"

::K8S::Kubernetes::Resource.define_object("PodPresetSpec",
  namespace: "::K8S::Api::Settings::V1alpha1",
  properties: [

    {name: "env", kind: ::Array(::K8S::Api::Core::V1::EnvVar), key: "env", nilable: true, read_only: false, description: "Env defines the collection of EnvVar to inject into containers."},
    {name: "env_from", kind: ::Array(::K8S::Api::Core::V1::EnvFromSource), key: "envFrom", nilable: true, read_only: false, description: "EnvFrom defines the collection of EnvFromSource to inject into containers."},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "Selector is a label query over a set of resources, in this case pods. Required."},
    {name: "volume_mounts", kind: ::Array(::K8S::Api::Core::V1::VolumeMount), key: "volumeMounts", nilable: true, read_only: false, description: "VolumeMounts defines the collection of VolumeMount to inject into containers."},
    {name: "volumes", kind: ::Array(::K8S::Api::Core::V1::Volume), key: "volumes", nilable: true, read_only: false, description: "Volumes defines the collection of Volume to inject into the pod."},

  ]
)
