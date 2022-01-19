# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DownwardAPIProjection; end

require "./downward_api_volume_file"

module K8S
  # Namespace holding the types for `Api::Core::V1::DownwardAPIProjection`.
  module Types::Api::Core::V1::DownwardAPIProjection
    alias ValueType = ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Items is a list of DownwardAPIVolume file
    abstract def items : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)?)
  end

  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  @[::K8S::Properties(
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile)", nilable: true, default: nil, read_only: false, description: "Items is a list of DownwardAPIVolume file"},
  )]
  class Api::Core::V1::DownwardAPIProjection < ::K8S::Types::Api::Core::V1::DownwardAPIProjection::Instance
    include ::K8S::Types::Api::Core::V1::DownwardAPIProjection
    include ::K8S::Kubernetes::Object

    # Items is a list of DownwardAPIVolume file
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
        { key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile) },
      ])
end
  end
end
