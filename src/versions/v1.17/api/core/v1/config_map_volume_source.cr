# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ConfigMapVolumeSource; end

require "./key_to_path"

module K8S
  # Namespace holding the types for `Api::Core::V1::ConfigMapVolumeSource`.
  module Types::Api::Core::V1::ConfigMapVolumeSource
    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def default_mode : Int32?
    # :ditto:
    abstract def default_mode! : Int32
    # :ditto:
    abstract def default_mode? : Int32?
    # :ditto:
    abstract def default_mode=(value : Int32)
    # If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    abstract def items : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::KeyToPath)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::KeyToPath))
    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Specify whether the ConfigMap or its keys must be defined
    abstract def optional : ::Bool?
    # :ditto:
    abstract def optional! : ::Bool
    # :ditto:
    abstract def optional? : ::Bool?
    # :ditto:
    abstract def optional=(value : ::Bool)
  end

  # Adapts a ConfigMap into a volume.
  #
  # The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. ConfigMap volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    default_mode: {key: "defaultMode", accessor: "default_mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::KeyToPath)", nilable: true, default: nil, read_only: false, description: "If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    optional: {key: "optional", accessor: "optional", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify whether the ConfigMap or its keys must be defined", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ConfigMapVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ConfigMapVolumeSource
    k8s_object_accessor("defaultMode", default_mode : Int32, true, false, "Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.")
    k8s_object_accessor("items", items : ::Array(::K8S::Api::Core::V1::KeyToPath), true, false, "If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.")
    k8s_object_accessor("name", name : String, true, false, "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)")
    k8s_object_accessor("optional", optional : ::Bool, true, false, "Specify whether the ConfigMap or its keys must be defined")

    def initialize(*, default_mode : Int32? = nil, items : ::Array(::K8S::Api::Core::V1::KeyToPath)? = nil, name : String? = nil, optional : ::Bool? = nil)
      super()
      self.["defaultMode"] = default_mode
      self.["items"] = items
      self.["name"] = name
      self.["optional"] = optional
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "defaultMode", accessor: "default_mode", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::KeyToPath)},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "optional", accessor: "optional", nilable: true, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
