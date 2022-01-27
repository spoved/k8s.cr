# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LimitRangeSpec; end

require "./limit_range_item"

module K8S
  # Namespace holding the types for `Api::Core::V1::LimitRangeSpec`.
  module Types::Api::Core::V1::LimitRangeSpec
    # Limits is the list of LimitRangeItem objects that are enforced.
    abstract def limits : ::Array(::K8S::Api::Core::V1::LimitRangeItem)?
    # :ditto:
    abstract def limits! : ::Array(::K8S::Api::Core::V1::LimitRangeItem)
    # :ditto:
    abstract def limits? : ::Array(::K8S::Api::Core::V1::LimitRangeItem)?
    # :ditto:
    abstract def limits=(value : ::Array(::K8S::Api::Core::V1::LimitRangeItem))
  end

  # LimitRangeSpec defines a [min/max usage limit for resources that match on kind.](min/max usage limit for resources that match on kind.)
  @[::K8S::Properties(
    limits: {key: "limits", accessor: "limits", kind: "::Array(::K8S::Api::Core::V1::LimitRangeItem)", nilable: false, default: nil, read_only: false, description: "Limits is the list of LimitRangeItem objects that are enforced.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::LimitRangeSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::LimitRangeSpec
    k8s_object_accessor("limits", limits : ::Array(::K8S::Api::Core::V1::LimitRangeItem), false, false, "Limits is the list of LimitRangeItem objects that are enforced.")

    def initialize(*, limits : ::Array(::K8S::Api::Core::V1::LimitRangeItem)? = nil)
      super()
      self.["limits"] = limits
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "limits", accessor: "limits", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LimitRangeItem)},
    ])
  end
end
