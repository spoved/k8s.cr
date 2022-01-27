# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1alpha1::VolumeError; end

module K8S
  # Namespace holding the types for `Api::Storage::V1alpha1::VolumeError`.
  module Types::Api::Storage::V1alpha1::VolumeError
    # String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # Time the error was encountered.
    abstract def time : ::Time?
    # :ditto:
    abstract def time! : ::Time
    # :ditto:
    abstract def time? : ::Time?
    # :ditto:
    abstract def time=(value : ::Time)
  end

  # VolumeError captures an error encountered during a volume operation.
  @[::K8S::Properties(
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    time: {key: "time", accessor: "time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time the error was encountered.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1alpha1::VolumeError < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1alpha1::VolumeError
    k8s_object_accessor("message", message : String, true, false, "String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.")
    k8s_object_accessor("time", time : ::Time, true, false, "Time the error was encountered.")

    def initialize(*, message : String? = nil, time : ::Time? = nil)
      super()
      self.["message"] = message
      self.["time"] = time
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "time", accessor: "time", nilable: true, read_only: false, default: nil, kind: ::Time},
    ])
  end
end
