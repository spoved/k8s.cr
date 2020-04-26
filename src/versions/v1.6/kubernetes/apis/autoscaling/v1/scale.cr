# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Scale represents a scaling request for a resource.
  class Kubernetes::Apis::Autoscaling::V1::Scale
    getter api_version : String = "autoscaling/v1"
    getter kind : String = "Scale"
    # Standard object metadata; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # defines the behavior of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : Kubernetes::Apis::Autoscaling::V1::ScaleSpec | Nil

    # current status of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.)
    property status : Kubernetes::Apis::Autoscaling::V1::ScaleStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "autoscaling/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Scale", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V1::ScaleSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V1::ScaleStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Autoscaling::V1::ScaleSpec | Nil = nil, @status : Kubernetes::Apis::Autoscaling::V1::ScaleStatus | Nil = nil)
    end
  end

  module Resources::Autoscaling::V1
    alias Scale = ::K8S::Kubernetes::Apis::Autoscaling::V1::Scale
  end
end
