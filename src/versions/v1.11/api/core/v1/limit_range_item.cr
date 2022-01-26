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
    abstract def default=(value : ::Hash(String, ::Int32 | ::String)?)
    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    abstract def default_request : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default_request! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def default_request? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def default_request=(value : ::Hash(String, ::Int32 | ::String)?)
    # Max usage constraints on this kind by resource name.
    abstract def max : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def max? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max=(value : ::Hash(String, ::Int32 | ::String)?)
    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    abstract def max_limit_request_ratio : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max_limit_request_ratio! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def max_limit_request_ratio? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def max_limit_request_ratio=(value : ::Hash(String, ::Int32 | ::String)?)
    # Min usage constraints on this kind by resource name.
    abstract def min : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def min! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def min? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def min=(value : ::Hash(String, ::Int32 | ::String)?)
    # Type of resource that this limit applies to.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
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

    # Default resource requirement limit value by resource name if resource limit is omitted.
    def default : ::Hash(String, ::Int32 | ::String)?
      self.["default"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def default! : ::Hash(String, ::Int32 | ::String)
      self.["default"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def default? : ::Hash(String, ::Int32 | ::String)?
      self.["default"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def default=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["default"] = value
    end

    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    def default_request : ::Hash(String, ::Int32 | ::String)?
      self.["defaultRequest"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def default_request! : ::Hash(String, ::Int32 | ::String)
      self.["defaultRequest"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def default_request? : ::Hash(String, ::Int32 | ::String)?
      self.["defaultRequest"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def default_request=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["defaultRequest"] = value
    end

    # Max usage constraints on this kind by resource name.
    def max : ::Hash(String, ::Int32 | ::String)?
      self.["max"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def max! : ::Hash(String, ::Int32 | ::String)
      self.["max"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def max? : ::Hash(String, ::Int32 | ::String)?
      self.["max"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def max=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["max"] = value
    end

    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    def max_limit_request_ratio : ::Hash(String, ::Int32 | ::String)?
      self.["maxLimitRequestRatio"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def max_limit_request_ratio! : ::Hash(String, ::Int32 | ::String)
      self.["maxLimitRequestRatio"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def max_limit_request_ratio? : ::Hash(String, ::Int32 | ::String)?
      self.["maxLimitRequestRatio"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def max_limit_request_ratio=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["maxLimitRequestRatio"] = value
    end

    # Min usage constraints on this kind by resource name.
    def min : ::Hash(String, ::Int32 | ::String)?
      self.["min"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def min! : ::Hash(String, ::Int32 | ::String)
      self.["min"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def min? : ::Hash(String, ::Int32 | ::String)?
      self.["min"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def min=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["min"] = value
    end

    # Type of resource that this limit applies to.
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "default", accessor: "default", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "defaultRequest", accessor: "default_request", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "max", accessor: "max", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "maxLimitRequestRatio", accessor: "max_limit_request_ratio", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "min", accessor: "min", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
