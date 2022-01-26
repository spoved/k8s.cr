# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Taint; end

module K8S
  # Namespace holding the types for `Api::Core::V1::Taint`.
  module Types::Api::Core::V1::Taint
    # Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
    #
    # Possible enum values:
    #  - `"NoExecute"` Evict any already-running pods that do not tolerate the taint. Currently enforced by NodeController.
    #  - `"NoSchedule"` Do not allow new pods to schedule onto the node unless they tolerate the taint, but allow all pods submitted to Kubelet without going through the scheduler to start, and allow all already-running pods to continue running. Enforced by the scheduler.
    #  - `"PreferNoSchedule"` Like TaintEffectNoSchedule, but the scheduler tries not to schedule new pods onto the node, rather than prohibiting new pods from scheduling onto the node entirely. Enforced by the scheduler.
    abstract def effect : String
    # :ditto:
    abstract def effect! : String
    # :ditto:
    abstract def effect? : String?
    # :ditto:
    abstract def effect=(value : String)
    # Required. The taint key to be applied to a node.
    abstract def key : String
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
    abstract def time_added : ::Time?
    # :ditto:
    abstract def time_added! : ::Time
    # :ditto:
    abstract def time_added? : ::Time?
    # :ditto:
    abstract def time_added=(value : ::Time?)
    # The taint value corresponding to the taint key.
    abstract def value : String?
    # :ditto:
    abstract def value! : String
    # :ditto:
    abstract def value? : String?
    # :ditto:
    abstract def value=(value : String?)
  end

  # The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
  @[::K8S::Properties(
    effect: {key: "effect", accessor: "effect", kind: "String", nilable: false, default: nil, read_only: false, description: "Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.\n\nPossible enum values:\n - `\"NoExecute\"` Evict any already-running pods that do not tolerate the taint. Currently enforced by NodeController.\n - `\"NoSchedule\"` Do not allow new pods to schedule onto the node unless they tolerate the taint, but allow all pods submitted to Kubelet without going through the scheduler to start, and allow all already-running pods to continue running. Enforced by the scheduler.\n - `\"PreferNoSchedule\"` Like TaintEffectNoSchedule, but the scheduler tries not to schedule new pods onto the node, rather than prohibiting new pods from scheduling onto the node entirely. Enforced by the scheduler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "Required. The taint key to be applied to a node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    time_added: {key: "timeAdded", accessor: "time_added", kind: "::Time", nilable: true, default: nil, read_only: false, description: "TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: "The taint value corresponding to the taint key.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Taint < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Taint

    # Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
    #
    # Possible enum values:
    #  - `"NoExecute"` Evict any already-running pods that do not tolerate the taint. Currently enforced by NodeController.
    #  - `"NoSchedule"` Do not allow new pods to schedule onto the node unless they tolerate the taint, but allow all pods submitted to Kubelet without going through the scheduler to start, and allow all already-running pods to continue running. Enforced by the scheduler.
    #  - `"PreferNoSchedule"` Like TaintEffectNoSchedule, but the scheduler tries not to schedule new pods onto the node, rather than prohibiting new pods from scheduling onto the node entirely. Enforced by the scheduler.
    def effect : String
      self.["effect"].as(String)
    end

    # :ditto:
    def effect! : String
      self.["effect"].as(String).not_nil!
    end

    # :ditto:
    def effect? : String?
      self.["effect"]?.as(String?)
    end

    # :ditto:
    def effect=(value : String)
      self.["effect"] = value
    end

    # Required. The taint key to be applied to a node.
    def key : String
      self.["key"].as(String)
    end

    # :ditto:
    def key! : String
      self.["key"].as(String).not_nil!
    end

    # :ditto:
    def key? : String?
      self.["key"]?.as(String?)
    end

    # :ditto:
    def key=(value : String)
      self.["key"] = value
    end

    # TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
    def time_added : ::Time?
      self.["timeAdded"].as(::Time?)
    end

    # :ditto:
    def time_added! : ::Time
      self.["timeAdded"].as(::Time?).not_nil!
    end

    # :ditto:
    def time_added? : ::Time?
      self.["timeAdded"]?.as(::Time?)
    end

    # :ditto:
    def time_added=(value : ::Time?)
      self.["timeAdded"] = value
    end

    # The taint value corresponding to the taint key.
    def value : String?
      self.["value"].as(String?)
    end

    # :ditto:
    def value! : String
      self.["value"].as(String?).not_nil!
    end

    # :ditto:
    def value? : String?
      self.["value"]?.as(String?)
    end

    # :ditto:
    def value=(value : String?)
      self.["value"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "effect", accessor: "effect", nilable: false, read_only: false, default: nil, kind: String },
        { key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String },
        { key: "timeAdded", accessor: "time_added", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
