# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ConfigMapProjection; end

require "./key_to_path"

module K8S
  # Namespace holding the types for `Api::Core::V1::ConfigMapProjection`.
  module Types::Api::Core::V1::ConfigMapProjection
    # If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    abstract def items : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items! : ::Array(::K8S::Api::Core::V1::KeyToPath)
    # :ditto:
    abstract def items? : ::Array(::K8S::Api::Core::V1::KeyToPath)?
    # :ditto:
    abstract def items=(value : ::Array(::K8S::Api::Core::V1::KeyToPath)?)
    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Specify whether the ConfigMap or it's keys must be defined
    abstract def optional : ::Bool?
    # :ditto:
    abstract def optional! : ::Bool
    # :ditto:
    abstract def optional? : ::Bool?
    # :ditto:
    abstract def optional=(value : ::Bool?)
  end

  # Adapts a ConfigMap into a projected volume.
  #
  # The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.
  @[::K8S::Properties(
    items: {key: "items", accessor: "items", kind: "::Array(::K8S::Api::Core::V1::KeyToPath)", nilable: true, default: nil, read_only: false, description: "If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    optional: {key: "optional", accessor: "optional", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify whether the ConfigMap or it's keys must be defined", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ConfigMapProjection < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ConfigMapProjection

    # If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
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

    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # Specify whether the ConfigMap or it's keys must be defined
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "items", accessor: "items", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::KeyToPath) },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "optional", accessor: "optional", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
