# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::RollingUpdateDeployment; end

module K8S
  # Namespace holding the types for `Api::Apps::V1::RollingUpdateDeployment`.
  module Types::Api::Apps::V1::RollingUpdateDeployment
    alias ValueType = ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.
    abstract def max_surge : ::Int32 | ::String?
    # :ditto:
    abstract def max_surge! : ::Int32 | ::String
    # :ditto:
    abstract def max_surge? : ::Int32 | ::String?
    # :ditto:
    abstract def max_surge=(value : ::Int32 | ::String?)
    # The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.
    abstract def max_unavailable : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable! : ::Int32 | ::String
    # :ditto:
    abstract def max_unavailable? : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable=(value : ::Int32 | ::String?)
  end

  # Spec to control the desired behavior of rolling update.
  @[::K8S::Properties(
    max_surge: {key: "maxSurge", accessor: "max_surge", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_unavailable: {key: "maxUnavailable", accessor: "max_unavailable", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::RollingUpdateDeployment < ::K8S::Types::Api::Apps::V1::RollingUpdateDeployment::Instance
    include ::K8S::Types::Api::Apps::V1::RollingUpdateDeployment
    include ::K8S::Kubernetes::Object

    # The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.
    def max_surge : ::Int32 | ::String?
      self.["maxSurge"].as(::Int32 | ::String?)
    end

    # :ditto:
    def max_surge! : ::Int32 | ::String
      self.["maxSurge"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def max_surge? : ::Int32 | ::String?
      self.["maxSurge"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def max_surge=(value : ::Int32 | ::String?)
      self.["maxSurge"] = value
    end

    # The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.
    def max_unavailable : ::Int32 | ::String?
      self.["maxUnavailable"].as(::Int32 | ::String?)
    end

    # :ditto:
    def max_unavailable! : ::Int32 | ::String
      self.["maxUnavailable"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def max_unavailable? : ::Int32 | ::String?
      self.["maxUnavailable"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def max_unavailable=(value : ::Int32 | ::String?)
      self.["maxUnavailable"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "maxSurge", accessor: "max_surge", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "maxUnavailable", accessor: "max_unavailable", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
