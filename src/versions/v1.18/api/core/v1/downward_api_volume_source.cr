# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DownwardAPIVolumeSource; end

require "./downward_api_volume_file"

module K8S
  # Namespace holding the types for `Api::Core::V1::DownwardAPIVolumeSource`.
  module Types::Api::Core::V1::DownwardAPIVolumeSource
    alias ValueType = Int32 | ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def default_mode : Int32?
    # :ditto:
    abstract def default_mode! : Int32
    # :ditto:
    abstract def default_mode? : Int32?
    # :ditto:
    abstract def default_mode=(value : Int32?)
    # Items is a list of downward API volume file
    abstract def items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?)
  end

  # DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    default_mode: {key: "defaultMode", accessor: "default_mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)", nilable: true, default: nil, read_only: false, description: "Items is a list of downward API volume file"},
  )]
  class Api::Core::V1::DownwardAPIVolumeSource < ::K8S::Types::Api::Core::V1::DownwardAPIVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::DownwardAPIVolumeSource
    include ::K8S::Kubernetes::Object

    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    def default_mode : Int32?
      self.["defaultMode"].as(Int32?)
    end

    # :ditto:
    def default_mode! : Int32
      self.["defaultMode"].as(Int32?).not_nil!
    end

    # :ditto:
    def default_mode? : Int32?
      self.["defaultMode"]?.as(Int32?)
    end

    # :ditto:
    def default_mode=(value : Int32?)
      self.["defaultMode"] = value
    end

    # Items is a list of downward API volume file
    def items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
      self.["items"].as(::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?)
    end

    # :ditto:
    def items! : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)
      self.["items"].as(::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?).not_nil!
    end

    # :ditto:
    def items? : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
      self.["items"]?.as(::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?)
    end

    # :ditto:
    def items=(value : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?)
      self.["items"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "defaultMode", accessor: "default_mode", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile) },
      ])
end
  end
end
