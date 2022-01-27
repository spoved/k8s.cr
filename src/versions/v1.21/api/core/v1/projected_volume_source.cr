# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ProjectedVolumeSource; end

require "./volume_projection"

module K8S
  # Namespace holding the types for `Api::Core::V1::ProjectedVolumeSource`.
  module Types::Api::Core::V1::ProjectedVolumeSource
    # Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def default_mode : Int32?
    # :ditto:
    abstract def default_mode! : Int32
    # :ditto:
    abstract def default_mode? : Int32?
    # :ditto:
    abstract def default_mode=(value : Int32)
    # list of volume projections
    abstract def sources : ::Array(::K8S::Api::Core::V1::VolumeProjection)?
    # :ditto:
    abstract def sources! : ::Array(::K8S::Api::Core::V1::VolumeProjection)
    # :ditto:
    abstract def sources? : ::Array(::K8S::Api::Core::V1::VolumeProjection)?
    # :ditto:
    abstract def sources=(value : ::Array(::K8S::Api::Core::V1::VolumeProjection))
  end

  # Represents a projected volume source
  @[::K8S::Properties(
    default_mode: {key: "defaultMode", accessor: "default_mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    sources: {key: "sources", accessor: "sources", kind: "::Array(::K8S::Api::Core::V1::VolumeProjection)", nilable: true, default: nil, read_only: false, description: "list of volume projections", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ProjectedVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ProjectedVolumeSource
    k8s_object_accessor("defaultMode", default_mode : Int32, true, false, "Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.")
    k8s_object_accessor("sources", sources : ::Array(::K8S::Api::Core::V1::VolumeProjection), true, false, "list of volume projections")

    def initialize(*, default_mode : Int32? = nil, sources : ::Array(::K8S::Api::Core::V1::VolumeProjection)? = nil)
      super()
      self.["defaultMode"] = default_mode
      self.["sources"] = sources
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "defaultMode", accessor: "default_mode", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "sources", accessor: "sources", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeProjection)},
    ])
  end
end
