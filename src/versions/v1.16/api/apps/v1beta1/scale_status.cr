# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::ScaleStatus; end

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::ScaleStatus`.
  module Types::Api::Apps::V1beta1::ScaleStatus
    # actual number of observed instances of the scaled object.
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # label query over pods that should match the replicas count. More info: [[http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)](http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors))
    abstract def selector : ::Hash(String, String)?
    # :ditto:
    abstract def selector! : ::Hash(String, String)
    # :ditto:
    abstract def selector? : ::Hash(String, String)?
    # :ditto:
    abstract def selector=(value : ::Hash(String, String))
    # label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def target_selector : String?
    # :ditto:
    abstract def target_selector! : String
    # :ditto:
    abstract def target_selector? : String?
    # :ditto:
    abstract def target_selector=(value : String)
  end

  # ScaleStatus represents the current status of a scale subresource.
  @[::K8S::Properties(
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "actual number of observed instances of the scaled object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_selector: {key: "targetSelector", accessor: "target_selector", kind: "String", nilable: true, default: nil, read_only: false, description: "label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::ScaleStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1beta1::ScaleStatus
    k8s_object_accessor("replicas", replicas : Int32, false, false, "actual number of observed instances of the scaled object.")
    k8s_object_accessor("selector", selector : ::Hash(String, String), true, false, "label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)")
    k8s_object_accessor("targetSelector", target_selector : String, true, false, "label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)")

    def initialize(*, replicas : Int32? = nil, selector : ::Hash(String, String)? = nil, target_selector : String? = nil)
      super()
      self.["replicas"] = replicas
      self.["selector"] = selector
      self.["targetSelector"] = target_selector
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "targetSelector", accessor: "target_selector", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
