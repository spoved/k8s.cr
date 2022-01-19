# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::ScaleStatus; end

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::ScaleStatus`.
  module Types::Api::Apps::V1beta1::ScaleStatus
    alias ValueType = Int32 | ::Hash(String, String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # actual number of observed instances of the scaled object.
    abstract def replicas : Int32
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
    abstract def selector=(value : ::Hash(String, String)?)
    # label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def target_selector : String?
    # :ditto:
    abstract def target_selector! : String
    # :ditto:
    abstract def target_selector? : String?
    # :ditto:
    abstract def target_selector=(value : String?)
  end

  # ScaleStatus represents the current status of a scale subresource.
  @[::K8S::Properties(
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "actual number of observed instances of the scaled object."},
    selector: {key: "selector", accessor: "selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)"},
    target_selector: {key: "targetSelector", accessor: "target_selector", kind: "String", nilable: true, default: nil, read_only: false, description: "label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
  )]
  class Api::Apps::V1beta1::ScaleStatus < ::K8S::Types::Api::Apps::V1beta1::ScaleStatus::Instance
    include ::K8S::Types::Api::Apps::V1beta1::ScaleStatus
    include ::K8S::Kubernetes::Object

    # actual number of observed instances of the scaled object.
    def replicas : Int32
      self.["replicas"].as(Int32)
    end

    # :ditto:
    def replicas! : Int32
      self.["replicas"].as(Int32).not_nil!
    end

    # :ditto:
    def replicas? : Int32?
      self.["replicas"]?.as(Int32?)
    end

    # :ditto:
    def replicas=(value : Int32)
      self.["replicas"] = value
    end

    # label query over pods that should match the replicas count. More info: [[http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)](http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors))
    def selector : ::Hash(String, String)?
      self.["selector"].as(::Hash(String, String)?)
    end

    # :ditto:
    def selector! : ::Hash(String, String)
      self.["selector"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def selector? : ::Hash(String, String)?
      self.["selector"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def selector=(value : ::Hash(String, String)?)
      self.["selector"] = value
    end

    # label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    def target_selector : String?
      self.["targetSelector"].as(String?)
    end

    # :ditto:
    def target_selector! : String
      self.["targetSelector"].as(String?).not_nil!
    end

    # :ditto:
    def target_selector? : String?
      self.["targetSelector"]?.as(String?)
    end

    # :ditto:
    def target_selector=(value : String?)
      self.["targetSelector"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "targetSelector", accessor: "target_selector", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
