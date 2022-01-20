# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::VolumeDevice; end

module K8S
  # Namespace holding the types for `Api::Core::V1::VolumeDevice`.
  module Types::Api::Core::V1::VolumeDevice
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # devicePath is the path inside of the container that the device will be mapped to.
    abstract def device_path : String
    # :ditto:
    abstract def device_path! : String
    # :ditto:
    abstract def device_path? : String?
    # :ditto:
    abstract def device_path=(value : String)
    # name must match the name of a persistentVolumeClaim in the pod
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # volumeDevice describes a mapping of a raw block device within a container.
  @[::K8S::Properties(
    device_path: {key: "devicePath", accessor: "device_path", kind: "String", nilable: false, default: nil, read_only: false, description: "devicePath is the path inside of the container that the device will be mapped to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name must match the name of a persistentVolumeClaim in the pod", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::VolumeDevice < ::K8S::Types::Api::Core::V1::VolumeDevice::Instance
    include ::K8S::Types::Api::Core::V1::VolumeDevice
    include ::K8S::Kubernetes::Object

    # devicePath is the path inside of the container that the device will be mapped to.
    def device_path : String
      self.["devicePath"].as(String)
    end

    # :ditto:
    def device_path! : String
      self.["devicePath"].as(String).not_nil!
    end

    # :ditto:
    def device_path? : String?
      self.["devicePath"]?.as(String?)
    end

    # :ditto:
    def device_path=(value : String)
      self.["devicePath"] = value
    end

    # name must match the name of a persistentVolumeClaim in the pod
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "devicePath", accessor: "device_path", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
