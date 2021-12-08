# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodPresetSpec is a description of a pod preset.
  @[::K8S::Properties(
    env: {type: Array(Api::Core::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
    env_from: {type: Array(Api::Core::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    volume_mounts: {type: Array(Api::Core::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
    volumes: {type: Array(Api::Core::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
  )]
  class Api::Settings::V1alpha1::PodPresetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Env defines the collection of EnvVar to inject into containers.
    @[::JSON::Field(key: "env", emit_null: false)]
    @[::YAML::Field(key: "env", emit_null: false)]
    property env : Array(Api::Core::V1::EnvVar) | Nil

    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    @[::JSON::Field(key: "envFrom", emit_null: false)]
    @[::YAML::Field(key: "envFrom", emit_null: false)]
    property env_from : Array(Api::Core::V1::EnvFromSource) | Nil

    # Selector is a label query over a set of resources, in this case pods. Required.
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    @[::JSON::Field(key: "volumeMounts", emit_null: false)]
    @[::YAML::Field(key: "volumeMounts", emit_null: false)]
    property volume_mounts : Array(Api::Core::V1::VolumeMount) | Nil

    # Volumes defines the collection of Volume to inject into the pod.
    @[::JSON::Field(key: "volumes", emit_null: false)]
    @[::YAML::Field(key: "volumes", emit_null: false)]
    property volumes : Array(Api::Core::V1::Volume) | Nil

    def initialize(*, @env : Array | Nil = nil, @env_from : Array | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @volume_mounts : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
