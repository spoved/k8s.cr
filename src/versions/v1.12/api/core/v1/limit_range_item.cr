# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LimitRangeItem; end

module K8S
  # Namespace holding the types for `Api::Core::V1::LimitRangeItem`.
  module Types::Api::Core::V1::LimitRangeItem
    # Default resource requirement limit value by resource name if resource limit is omitted.
    abstract def default : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def default? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default=(value : ::Hash(String, ::Int32 | ::String))
    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    abstract def default_request : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default_request! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def default_request? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default_request=(value : ::Hash(String, ::Int32 | ::String))
    # Max usage constraints on this kind by resource name.
    abstract def max : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def max? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max=(value : ::Hash(String, ::Int32 | ::String))
    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    abstract def max_limit_request_ratio : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max_limit_request_ratio! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def max_limit_request_ratio? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max_limit_request_ratio=(value : ::Hash(String, ::Int32 | ::String))
    # Min usage constraints on this kind by resource name.
    abstract def min : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def min! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def min? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def min=(value : ::Hash(String, ::Int32 | ::String))
    # Type of resource that this limit applies to.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # LimitRangeItem defines a [min/max usage limit for any resource that matches on kind.](min/max usage limit for any resource that matches on kind.)
  @[::K8S::Properties(
    default: {key: "default", accessor: "default", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Default resource requirement limit value by resource name if resource limit is omitted.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default_request: {key: "defaultRequest", accessor: "default_request", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max: {key: "max", accessor: "max", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Max usage constraints on this kind by resource name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_limit_request_ratio: {key: "maxLimitRequestRatio", accessor: "max_limit_request_ratio", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min: {key: "min", accessor: "min", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Min usage constraints on this kind by resource name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of resource that this limit applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::LimitRangeItem < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::LimitRangeItem
    k8s_object_accessor("default", default : ::Hash(String, ::Int32 | ::String), true, false, "Default resource requirement limit value by resource name if resource limit is omitted.")
    k8s_object_accessor("defaultRequest", default_request : ::Hash(String, ::Int32 | ::String), true, false, "DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.")
    k8s_object_accessor("max", max : ::Hash(String, ::Int32 | ::String), true, false, "Max usage constraints on this kind by resource name.")
    k8s_object_accessor("maxLimitRequestRatio", max_limit_request_ratio : ::Hash(String, ::Int32 | ::String), true, false, "MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.")
    k8s_object_accessor("min", min : ::Hash(String, ::Int32 | ::String), true, false, "Min usage constraints on this kind by resource name.")
    k8s_object_accessor("type", type : String, true, false, "Type of resource that this limit applies to.")

    def initialize(*, default : ::Hash(String, ::Int32 | ::String)? = nil, default_request : ::Hash(String, ::Int32 | ::String)? = nil, max : ::Hash(String, ::Int32 | ::String)? = nil, max_limit_request_ratio : ::Hash(String, ::Int32 | ::String)? = nil, min : ::Hash(String, ::Int32 | ::String)? = nil, type : String? = nil)
      super()
      self.["default"] = default
      self.["defaultRequest"] = default_request
      self.["max"] = max
      self.["maxLimitRequestRatio"] = max_limit_request_ratio
      self.["min"] = min
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "default", accessor: "default", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "defaultRequest", accessor: "default_request", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "max", accessor: "max", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "maxLimitRequestRatio", accessor: "max_limit_request_ratio", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "min", accessor: "min", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
