# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::AttachedVolume; end

module K8S
  # Namespace holding the types for `Api::Core::V1::AttachedVolume`.
  module Types::Api::Core::V1::AttachedVolume
    # DevicePath represents the device path where the volume should be available
    abstract def device_path : String?
    # :ditto:
    abstract def device_path! : String
    # :ditto:
    abstract def device_path? : String?
    # :ditto:
    abstract def device_path=(value : String)
    # Name of the attached volume
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # AttachedVolume describes a volume attached to a node
  @[::K8S::Properties(
    device_path: {key: "devicePath", accessor: "device_path", kind: "String", nilable: false, default: nil, read_only: false, description: "DevicePath represents the device path where the volume should be available", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the attached volume", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::AttachedVolume < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::AttachedVolume
    k8s_object_accessor("devicePath", device_path : String, false, false, "DevicePath represents the device path where the volume should be available")
    k8s_object_accessor("name", name : String, false, false, "Name of the attached volume")

    def initialize(*, device_path : String? = nil, name : String? = nil)
      super()
      self.["devicePath"] = device_path
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "devicePath", accessor: "device_path", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
