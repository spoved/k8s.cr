# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Settings::V1alpha1::PodPresetSpec; end

require "../../core/v1/env_var"
require "../../core/v1/env_from_source"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/volume_mount"
require "../../core/v1/volume"

module K8S
  # Namespace holding the types for `Api::Settings::V1alpha1::PodPresetSpec`.
  module Types::Api::Settings::V1alpha1::PodPresetSpec
    # Env defines the collection of EnvVar to inject into containers.
    abstract def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
    # :ditto:
    abstract def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar))
    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    abstract def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
    # :ditto:
    abstract def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource))
    # Selector is a label query over a set of resources, in this case pods. Required.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    abstract def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
    # :ditto:
    abstract def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount))
    # Volumes defines the collection of Volume to inject into the pod.
    abstract def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
    # :ditto:
    abstract def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume))
  end

  # PodPresetSpec is a description of a pod preset.
  @[::K8S::Properties(
    env: {key: "env", accessor: "env", kind: "::Array(::K8S::Api::Core::V1::EnvVar)", nilable: true, default: nil, read_only: false, description: "Env defines the collection of EnvVar to inject into containers.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    env_from: {key: "envFrom", accessor: "env_from", kind: "::Array(::K8S::Api::Core::V1::EnvFromSource)", nilable: true, default: nil, read_only: false, description: "EnvFrom defines the collection of EnvFromSource to inject into containers.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Selector is a label query over a set of resources, in this case pods. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mounts: {key: "volumeMounts", accessor: "volume_mounts", kind: "::Array(::K8S::Api::Core::V1::VolumeMount)", nilable: true, default: nil, read_only: false, description: "VolumeMounts defines the collection of VolumeMount to inject into containers.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes: {key: "volumes", accessor: "volumes", kind: "::Array(::K8S::Api::Core::V1::Volume)", nilable: true, default: nil, read_only: false, description: "Volumes defines the collection of Volume to inject into the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Settings::V1alpha1::PodPresetSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Settings::V1alpha1::PodPresetSpec
    k8s_object_accessor("env", env : ::Array(::K8S::Api::Core::V1::EnvVar), true, false, "Env defines the collection of EnvVar to inject into containers.")
    k8s_object_accessor("envFrom", env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource), true, false, "EnvFrom defines the collection of EnvFromSource to inject into containers.")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "Selector is a label query over a set of resources, in this case pods. Required.")
    k8s_object_accessor("volumeMounts", volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount), true, false, "VolumeMounts defines the collection of VolumeMount to inject into containers.")
    k8s_object_accessor("volumes", volumes : ::Array(::K8S::Api::Core::V1::Volume), true, false, "Volumes defines the collection of Volume to inject into the pod.")

    def initialize(*, env : ::Array(::K8S::Api::Core::V1::EnvVar)? = nil, env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)? = nil, volumes : ::Array(::K8S::Api::Core::V1::Volume)? = nil)
      super()
      self.["env"] = env
      self.["envFrom"] = env_from
      self.["selector"] = selector
      self.["volumeMounts"] = volume_mounts
      self.["volumes"] = volumes
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "env", accessor: "env", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvVar)},
      {key: "envFrom", accessor: "env_from", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvFromSource)},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "volumeMounts", accessor: "volume_mounts", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeMount)},
      {key: "volumes", accessor: "volumes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Volume)},
    ])
  end
end
