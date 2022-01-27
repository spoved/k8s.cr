# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DownwardAPIProjection; end

require "./downward_api_volume_file"

module K8S
  # Namespace holding the types for `Api::Core::V1::DownwardAPIProjection`.
  module Types::Api::Core::V1::DownwardAPIProjection
    # Items is a list of DownwardAPIVolume file
    abstract def items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile))
  end

  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  @[::K8S::Properties(
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)", nilable: true, default: nil, read_only: false, description: "Items is a list of DownwardAPIVolume file", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::DownwardAPIProjection < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::DownwardAPIProjection
    k8s_object_accessor("items", items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile), true, false, "Items is a list of DownwardAPIVolume file")

    def initialize(*, items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)? = nil)
      super()
      self.["items"] = items
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)},
    ])
  end
end
