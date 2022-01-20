# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::VolumeMount; end

module K8S
  # Namespace holding the types for `Api::Core::V1::VolumeMount`.
  module Types::Api::Core::V1::VolumeMount
    alias ValueType = String | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Path within the container at which the volume should be mounted.  Must not contain ':'.
    abstract def mount_path : String
    # :ditto:
    abstract def mount_path! : String
    # :ditto:
    abstract def mount_path? : String?
    # :ditto:
    abstract def mount_path=(value : String)
    # mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    abstract def mount_propagation : String?
    # :ditto:
    abstract def mount_propagation! : String
    # :ditto:
    abstract def mount_propagation? : String?
    # :ditto:
    abstract def mount_propagation=(value : String?)
    # This must match the Name of a Volume.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
    abstract def sub_path : String?
    # :ditto:
    abstract def sub_path! : String
    # :ditto:
    abstract def sub_path? : String?
    # :ditto:
    abstract def sub_path=(value : String?)
    # Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
    abstract def sub_path_expr : String?
    # :ditto:
    abstract def sub_path_expr! : String
    # :ditto:
    abstract def sub_path_expr? : String?
    # :ditto:
    abstract def sub_path_expr=(value : String?)
  end

  # VolumeMount describes a mounting of a Volume within a container.
  @[::K8S::Properties(
    mount_path: {key: "mountPath", accessor: "mount_path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path within the container at which the volume should be mounted.  Must not contain ':'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    mount_propagation: {key: "mountPropagation", accessor: "mount_propagation", kind: "String", nilable: true, default: nil, read_only: false, description: "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "This must match the Name of a Volume.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    sub_path: {key: "subPath", accessor: "sub_path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    sub_path_expr: {key: "subPathExpr", accessor: "sub_path_expr", kind: "String", nilable: true, default: nil, read_only: false, description: "Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::VolumeMount < ::K8S::Types::Api::Core::V1::VolumeMount::Instance
    include ::K8S::Types::Api::Core::V1::VolumeMount
    include ::K8S::Kubernetes::Object

    # Path within the container at which the volume should be mounted.  Must not contain ':'.
    def mount_path : String
      self.["mountPath"].as(String)
    end

    # :ditto:
    def mount_path! : String
      self.["mountPath"].as(String).not_nil!
    end

    # :ditto:
    def mount_path? : String?
      self.["mountPath"]?.as(String?)
    end

    # :ditto:
    def mount_path=(value : String)
      self.["mountPath"] = value
    end

    # mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    def mount_propagation : String?
      self.["mountPropagation"].as(String?)
    end

    # :ditto:
    def mount_propagation! : String
      self.["mountPropagation"].as(String?).not_nil!
    end

    # :ditto:
    def mount_propagation? : String?
      self.["mountPropagation"]?.as(String?)
    end

    # :ditto:
    def mount_propagation=(value : String?)
      self.["mountPropagation"] = value
    end

    # This must match the Name of a Volume.
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

    # Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    def read_only : ::Bool?
      self.["readOnly"].as(::Bool?)
    end

    # :ditto:
    def read_only! : ::Bool
      self.["readOnly"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only? : ::Bool?
      self.["readOnly"]?.as(::Bool?)
    end

    # :ditto:
    def read_only=(value : ::Bool?)
      self.["readOnly"] = value
    end

    # Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
    def sub_path : String?
      self.["subPath"].as(String?)
    end

    # :ditto:
    def sub_path! : String
      self.["subPath"].as(String?).not_nil!
    end

    # :ditto:
    def sub_path? : String?
      self.["subPath"]?.as(String?)
    end

    # :ditto:
    def sub_path=(value : String?)
      self.["subPath"] = value
    end

    # Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
    def sub_path_expr : String?
      self.["subPathExpr"].as(String?)
    end

    # :ditto:
    def sub_path_expr! : String
      self.["subPathExpr"].as(String?).not_nil!
    end

    # :ditto:
    def sub_path_expr? : String?
      self.["subPathExpr"]?.as(String?)
    end

    # :ditto:
    def sub_path_expr=(value : String?)
      self.["subPathExpr"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "mountPath", accessor: "mount_path", nilable: false, read_only: false, default: nil, kind: String },
        { key: "mountPropagation", accessor: "mount_propagation", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "subPath", accessor: "sub_path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "subPathExpr", accessor: "sub_path_expr", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
