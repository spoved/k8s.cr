# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DownwardAPIVolumeSource; end

require "./downward_api_volume_file"

module K8S
  # Namespace holding the types for `Api::Core::V1::DownwardAPIVolumeSource`.
  module Types::Api::Core::V1::DownwardAPIVolumeSource
    # Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def default_mode : Int32?
    # :ditto:
    abstract def default_mode! : Int32
    # :ditto:
    abstract def default_mode? : Int32?
    # :ditto:
    abstract def default_mode=(value : Int32)
    # Items is a list of downward API volume file
    abstract def items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile))
  end

  # DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    default_mode: {key: "defaultMode", accessor: "default_mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)", nilable: true, default: nil, read_only: false, description: "Items is a list of downward API volume file", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::DownwardAPIVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::DownwardAPIVolumeSource
    k8s_object_accessor("defaultMode", default_mode : Int32, true, false, "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.")
    k8s_object_accessor("items", items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile), true, false, "Items is a list of downward API volume file")

    def initialize(*, default_mode : Int32? = nil, items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)? = nil)
      super()
      self.["defaultMode"] = default_mode
      self.["items"] = items
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "defaultMode", accessor: "default_mode", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)},
    ])
  end
end
