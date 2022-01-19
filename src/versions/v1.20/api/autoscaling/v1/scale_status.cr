# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V1::ScaleStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V1::ScaleStatus`.
  module Types::Api::Autoscaling::V1::ScaleStatus
    alias ValueType = Int32 | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # actual number of observed instances of the scaled object.
    abstract def replicas : Int32
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [[http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)](http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors))
    abstract def selector : String?
    # :ditto:
    abstract def selector! : String
    # :ditto:
    abstract def selector? : String?
    # :ditto:
    abstract def selector=(value : String?)
  end

  # ScaleStatus represents the current status of a scale subresource.
  @[::K8S::Properties(
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "actual number of observed instances of the scaled object."},
    selector: {key: "selector", accessor: "selector", kind: "String", nilable: true, default: nil, read_only: false, description: "label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)"},
  )]
  class Api::Autoscaling::V1::ScaleStatus < ::K8S::Types::Api::Autoscaling::V1::ScaleStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V1::ScaleStatus
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

    # label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [[http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)](http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors))
    def selector : String?
      self.["selector"].as(String?)
    end

    # :ditto:
    def selector! : String
      self.["selector"].as(String?).not_nil!
    end

    # :ditto:
    def selector? : String?
      self.["selector"]?.as(String?)
    end

    # :ditto:
    def selector=(value : String?)
      self.["selector"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
