# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # configuration of a horizontal pod autoscaler.
  class Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
    getter api_version : String = "autoscaling/v1"
    getter kind : String = "HorizontalPodAutoscaler"
    # Standard object metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # behaviour of autoscaler. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil

    # current information about the autoscaler.
    property status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "HorizontalPodAutoscaler", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec | Nil = nil, @status : Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias HorizontalPodAutoscaler = ::K8S::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
  end
end
