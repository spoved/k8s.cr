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
    alias ValueType = ::Array(::K8S::Api::Core::V1::EnvVar) | ::Array(::K8S::Api::Core::V1::EnvFromSource) | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::Array(::K8S::Api::Core::V1::VolumeMount) | ::Array(::K8S::Api::Core::V1::Volume) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Env defines the collection of EnvVar to inject into containers.
    abstract def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
    # :ditto:
    abstract def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar)?)
    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    abstract def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
    # :ditto:
    abstract def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    # Selector is a label query over a set of resources, in this case pods. Required.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    abstract def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
    # :ditto:
    abstract def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount)?)
    # Volumes defines the collection of Volume to inject into the pod.
    abstract def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
    # :ditto:
    abstract def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume)?)
  end

  # PodPresetSpec is a description of a pod preset.
  @[::K8S::Properties(
    env: {key: "env", accessor: "env", kind: "::Array(::K8S::Api::Core::V1::EnvVar)", nilable: true, default: nil, read_only: false, description: "Env defines the collection of EnvVar to inject into containers."},
    env_from: {key: "envFrom", accessor: "env_from", kind: "::Array(::K8S::Api::Core::V1::EnvFromSource)", nilable: true, default: nil, read_only: false, description: "EnvFrom defines the collection of EnvFromSource to inject into containers."},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Selector is a label query over a set of resources, in this case pods. Required."},
    volume_mounts: {key: "volumeMounts", accessor: "volume_mounts", kind: "::Array(::K8S::Api::Core::V1::VolumeMount)", nilable: true, default: nil, read_only: false, description: "VolumeMounts defines the collection of VolumeMount to inject into containers."},
    volumes: {key: "volumes", accessor: "volumes", kind: "::Array(::K8S::Api::Core::V1::Volume)", nilable: true, default: nil, read_only: false, description: "Volumes defines the collection of Volume to inject into the pod."},
  )]
  class Api::Settings::V1alpha1::PodPresetSpec < ::K8S::Types::Api::Settings::V1alpha1::PodPresetSpec::Instance
    include ::K8S::Types::Api::Settings::V1alpha1::PodPresetSpec
    include ::K8S::Kubernetes::Object

    # Env defines the collection of EnvVar to inject into containers.
    def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
      self.["env"].as(::Array(::K8S::Api::Core::V1::EnvVar)?)
    end

    # :ditto:
    def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
      self.["env"].as(::Array(::K8S::Api::Core::V1::EnvVar)?).not_nil!
    end

    # :ditto:
    def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
      self.["env"]?.as(::Array(::K8S::Api::Core::V1::EnvVar)?)
    end

    # :ditto:
    def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar)?)
      self.["env"] = value
    end

    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
      self.["envFrom"].as(::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    end

    # :ditto:
    def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
      self.["envFrom"].as(::Array(::K8S::Api::Core::V1::EnvFromSource)?).not_nil!
    end

    # :ditto:
    def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
      self.["envFrom"]?.as(::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    end

    # :ditto:
    def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource)?)
      self.["envFrom"] = value
    end

    # Selector is a label query over a set of resources, in this case pods. Required.
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["selector"] = value
    end

    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
      self.["volumeMounts"].as(::Array(::K8S::Api::Core::V1::VolumeMount)?)
    end

    # :ditto:
    def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
      self.["volumeMounts"].as(::Array(::K8S::Api::Core::V1::VolumeMount)?).not_nil!
    end

    # :ditto:
    def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
      self.["volumeMounts"]?.as(::Array(::K8S::Api::Core::V1::VolumeMount)?)
    end

    # :ditto:
    def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount)?)
      self.["volumeMounts"] = value
    end

    # Volumes defines the collection of Volume to inject into the pod.
    def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
      self.["volumes"].as(::Array(::K8S::Api::Core::V1::Volume)?)
    end

    # :ditto:
    def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
      self.["volumes"].as(::Array(::K8S::Api::Core::V1::Volume)?).not_nil!
    end

    # :ditto:
    def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
      self.["volumes"]?.as(::Array(::K8S::Api::Core::V1::Volume)?)
    end

    # :ditto:
    def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume)?)
      self.["volumes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "env", accessor: "env", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvVar) },
        { key: "envFrom", accessor: "env_from", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvFromSource) },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "volumeMounts", accessor: "volume_mounts", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeMount) },
        { key: "volumes", accessor: "volumes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Volume) },
      ])
end
  end
end
