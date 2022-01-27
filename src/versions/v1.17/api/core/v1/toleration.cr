# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Toleration; end

module K8S
  # Namespace holding the types for `Api::Core::V1::Toleration`.
  module Types::Api::Core::V1::Toleration
    # Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    abstract def effect : String?
    # :ditto:
    abstract def effect! : String
    # :ditto:
    abstract def effect? : String?
    # :ditto:
    abstract def effect=(value : String)
    # Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    abstract def key : String?
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
    abstract def operator : String?
    # :ditto:
    abstract def operator! : String
    # :ditto:
    abstract def operator? : String?
    # :ditto:
    abstract def operator=(value : String)
    # TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
    abstract def toleration_seconds : Int32?
    # :ditto:
    abstract def toleration_seconds! : Int32
    # :ditto:
    abstract def toleration_seconds? : Int32?
    # :ditto:
    abstract def toleration_seconds=(value : Int32)
    # Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
    abstract def value : String?
    # :ditto:
    abstract def value! : String
    # :ditto:
    abstract def value? : String?
    # :ditto:
    abstract def value=(value : String)
  end

  # The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
  @[::K8S::Properties(
    effect: {key: "effect", accessor: "effect", kind: "String", nilable: true, default: nil, read_only: false, description: "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    key: {key: "key", accessor: "key", kind: "String", nilable: true, default: nil, read_only: false, description: "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operator: {key: "operator", accessor: "operator", kind: "String", nilable: true, default: nil, read_only: false, description: "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    toleration_seconds: {key: "tolerationSeconds", accessor: "toleration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Toleration < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Toleration
    k8s_object_accessor("effect", effect : String, true, false, "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.")
    k8s_object_accessor("key", key : String, true, false, "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.")
    k8s_object_accessor("operator", operator : String, true, false, "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.")
    k8s_object_accessor("tolerationSeconds", toleration_seconds : Int32, true, false, "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.")
    k8s_object_accessor("value", value : String, true, false, "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.")

    def initialize(*, effect : String? = nil, key : String? = nil, operator : String? = nil, toleration_seconds : Int32? = nil, value : String? = nil)
      super()
      self.["effect"] = effect
      self.["key"] = key
      self.["operator"] = operator
      self.["tolerationSeconds"] = toleration_seconds
      self.["value"] = value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "effect", accessor: "effect", nilable: true, read_only: false, default: nil, kind: String},
      {key: "key", accessor: "key", nilable: true, read_only: false, default: nil, kind: String},
      {key: "operator", accessor: "operator", nilable: true, read_only: false, default: nil, kind: String},
      {key: "tolerationSeconds", accessor: "toleration_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
