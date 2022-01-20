# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::KeyToPath; end

module K8S
  # Namespace holding the types for `Api::Core::V1::KeyToPath`.
  module Types::Api::Core::V1::KeyToPath
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The key to project.
    abstract def key : String
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    abstract def mode : Int32?
    # :ditto:
    abstract def mode! : Int32
    # :ditto:
    abstract def mode? : Int32?
    # :ditto:
    abstract def mode=(value : Int32?)
    # The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
    abstract def path : String
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
  end

  # Maps a string key to a path within a volume.
  @[::K8S::Properties(
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "The key to project.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    mode: {key: "mode", accessor: "mode", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::KeyToPath < ::K8S::Types::Api::Core::V1::KeyToPath::Instance
    include ::K8S::Types::Api::Core::V1::KeyToPath
    include ::K8S::Kubernetes::Object

    # The key to project.
    def key : String
      self.["key"].as(String)
    end

    # :ditto:
    def key! : String
      self.["key"].as(String).not_nil!
    end

    # :ditto:
    def key? : String?
      self.["key"]?.as(String?)
    end

    # :ditto:
    def key=(value : String)
      self.["key"] = value
    end

    # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
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

    # The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String },
        { key: "mode", accessor: "mode", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
