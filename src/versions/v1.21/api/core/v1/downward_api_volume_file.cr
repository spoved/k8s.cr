# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DownwardAPIVolumeFile; end

require "./object_field_selector"
require "./resource_field_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::DownwardAPIVolumeFile`.
  module Types::Api::Core::V1::DownwardAPIVolumeFile
    # Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
    abstract def field_ref : ::K8S::Api::Core::V1::ObjectFieldSelector?
    # :ditto:
    abstract def field_ref! : ::K8S::Api::Core::V1::ObjectFieldSelector
    # :ditto:
    abstract def field_ref? : ::K8S::Api::Core::V1::ObjectFieldSelector?
    # :ditto:
    abstract def field_ref=(value : ::K8S::Api::Core::V1::ObjectFieldSelector?)
    # Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def mode : Int32?
    # :ditto:
    abstract def mode! : Int32
    # :ditto:
    abstract def mode? : Int32?
    # :ditto:
    abstract def mode=(value : Int32?)
    # Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
    abstract def path : String
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    abstract def resource_field_ref : ::K8S::Api::Core::V1::ResourceFieldSelector?
    # :ditto:
    abstract def resource_field_ref! : ::K8S::Api::Core::V1::ResourceFieldSelector
    # :ditto:
    abstract def resource_field_ref? : ::K8S::Api::Core::V1::ResourceFieldSelector?
    # :ditto:
    abstract def resource_field_ref=(value : ::K8S::Api::Core::V1::ResourceFieldSelector?)
  end

  # DownwardAPIVolumeFile represents information to create the file containing the pod field
  @[::K8S::Properties(
    field_ref: {key: "fieldRef", accessor: "field_ref", kind: "::K8S::Api::Core::V1::ObjectFieldSelector", nilable: true, default: nil, read_only: false, description: "Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    mode: {key: "mode", accessor: "mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_field_ref: {key: "resourceFieldRef", accessor: "resource_field_ref", kind: "::K8S::Api::Core::V1::ResourceFieldSelector", nilable: true, default: nil, read_only: false, description: "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::DownwardAPIVolumeFile < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::DownwardAPIVolumeFile

    # Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
    def field_ref : ::K8S::Api::Core::V1::ObjectFieldSelector?
      self.["fieldRef"].as(::K8S::Api::Core::V1::ObjectFieldSelector?)
    end

    # :ditto:
    def field_ref! : ::K8S::Api::Core::V1::ObjectFieldSelector
      self.["fieldRef"].as(::K8S::Api::Core::V1::ObjectFieldSelector?).not_nil!
    end

    # :ditto:
    def field_ref? : ::K8S::Api::Core::V1::ObjectFieldSelector?
      self.["fieldRef"]?.as(::K8S::Api::Core::V1::ObjectFieldSelector?)
    end

    # :ditto:
    def field_ref=(value : ::K8S::Api::Core::V1::ObjectFieldSelector?)
      self.["fieldRef"] = value
    end

    # Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    def mode : Int32?
      self.["mode"].as(Int32?)
    end

    # :ditto:
    def mode! : Int32
      self.["mode"].as(Int32?).not_nil!
    end

    # :ditto:
    def mode? : Int32?
      self.["mode"]?.as(Int32?)
    end

    # :ditto:
    def mode=(value : Int32?)
      self.["mode"] = value
    end

    # Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
    def path : String
      self.["path"].as(String)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String)
      self.["path"] = value
    end

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    def resource_field_ref : ::K8S::Api::Core::V1::ResourceFieldSelector?
      self.["resourceFieldRef"].as(::K8S::Api::Core::V1::ResourceFieldSelector?)
    end

    # :ditto:
    def resource_field_ref! : ::K8S::Api::Core::V1::ResourceFieldSelector
      self.["resourceFieldRef"].as(::K8S::Api::Core::V1::ResourceFieldSelector?).not_nil!
    end

    # :ditto:
    def resource_field_ref? : ::K8S::Api::Core::V1::ResourceFieldSelector?
      self.["resourceFieldRef"]?.as(::K8S::Api::Core::V1::ResourceFieldSelector?)
    end

    # :ditto:
    def resource_field_ref=(value : ::K8S::Api::Core::V1::ResourceFieldSelector?)
      self.["resourceFieldRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fieldRef", accessor: "field_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectFieldSelector },
        { key: "mode", accessor: "mode", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String },
        { key: "resourceFieldRef", accessor: "resource_field_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceFieldSelector },
      ])
end
  end
end
