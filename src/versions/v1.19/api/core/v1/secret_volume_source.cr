# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecretVolumeSource; end

require "./key_to_path"

module K8S
  # Namespace holding the types for `Api::Core::V1::SecretVolumeSource`.
  module Types::Api::Core::V1::SecretVolumeSource
    alias ValueType = Int32 | ::Array(::K8S::Api::Core::V1::KeyToPath) | ::Bool | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def default_mode : Int32?
    # :ditto:
    abstract def default_mode! : Int32
    # :ditto:
    abstract def default_mode? : Int32?
    # :ditto:
    abstract def default_mode=(value : Int32?)
    # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    abstract def items : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::KeyToPath)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::KeyToPath)?)
    # Specify whether the Secret or its keys must be defined
    abstract def optional : ::Bool?
    # :ditto:
    abstract def optional! : ::Bool
    # :ditto:
    abstract def optional? : ::Bool?
    # :ditto:
    abstract def optional=(value : ::Bool?)
    # Name of the secret in the pod's namespace to use. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)](https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret))
    abstract def secret_name : String?
    # :ditto:
    abstract def secret_name! : String
    # :ditto:
    abstract def secret_name? : String?
    # :ditto:
    abstract def secret_name=(value : String?)
  end

  # Adapts a Secret into a volume.
  #
  # The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    default_mode: {key: "defaultMode", accessor: "default_mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::KeyToPath)", nilable: true, default: nil, read_only: false, description: "If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    optional: {key: "optional", accessor: "optional", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify whether the Secret or its keys must be defined", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_name: {key: "secretName", accessor: "secret_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the secret in the pod's namespace to use. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SecretVolumeSource < ::K8S::Types::Api::Core::V1::SecretVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::SecretVolumeSource
    include ::K8S::Kubernetes::Object

    # Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
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

    # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    def items : ::Array(::K8S::Api::Core::V1::KeyToPath)?
      self.["items"].as(::Array(::K8S::Api::Core::V1::KeyToPath)?)
    end

    # :ditto:
    def items! : ::Array(::K8S::Api::Core::V1::KeyToPath)
      self.["items"].as(::Array(::K8S::Api::Core::V1::KeyToPath)?).not_nil!
    end

    # :ditto:
    def items? : ::Array(::K8S::Api::Core::V1::KeyToPath)?
      self.["items"]?.as(::Array(::K8S::Api::Core::V1::KeyToPath)?)
    end

    # :ditto:
    def items=(value : ::Array(::K8S::Api::Core::V1::KeyToPath)?)
      self.["items"] = value
    end

    # Specify whether the Secret or its keys must be defined
    def optional : ::Bool?
      self.["optional"].as(::Bool?)
    end

    # :ditto:
    def optional! : ::Bool
      self.["optional"].as(::Bool?).not_nil!
    end

    # :ditto:
    def optional? : ::Bool?
      self.["optional"]?.as(::Bool?)
    end

    # :ditto:
    def optional=(value : ::Bool?)
      self.["optional"] = value
    end

    # Name of the secret in the pod's namespace to use. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)](https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret))
    def secret_name : String?
      self.["secretName"].as(String?)
    end

    # :ditto:
    def secret_name! : String
      self.["secretName"].as(String?).not_nil!
    end

    # :ditto:
    def secret_name? : String?
      self.["secretName"]?.as(String?)
    end

    # :ditto:
    def secret_name=(value : String?)
      self.["secretName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "defaultMode", accessor: "default_mode", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::KeyToPath) },
        { key: "optional", accessor: "optional", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretName", accessor: "secret_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
