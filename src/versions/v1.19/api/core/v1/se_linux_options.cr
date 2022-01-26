# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SELinuxOptions; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SELinuxOptions`.
  module Types::Api::Core::V1::SELinuxOptions
    # Level is SELinux level label that applies to the container.
    abstract def level : String?
    # :ditto:
    abstract def level! : String
    # :ditto:
    abstract def level? : String?
    # :ditto:
    abstract def level=(value : String?)
    # Role is a SELinux role label that applies to the container.
    abstract def role : String?
    # :ditto:
    abstract def role! : String
    # :ditto:
    abstract def role? : String?
    # :ditto:
    abstract def role=(value : String?)
    # Type is a SELinux type label that applies to the container.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
    # User is a SELinux user label that applies to the container.
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String?)
  end

  # SELinuxOptions are the labels to be applied to the container
  @[::K8S::Properties(
    level: {key: "level", accessor: "level", kind: "String", nilable: true, default: nil, read_only: false, description: "Level is SELinux level label that applies to the container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    role: {key: "role", accessor: "role", kind: "String", nilable: true, default: nil, read_only: false, description: "Role is a SELinux role label that applies to the container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type is a SELinux type label that applies to the container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "User is a SELinux user label that applies to the container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SELinuxOptions < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::SELinuxOptions

    # Level is SELinux level label that applies to the container.
    def level : String?
      self.["level"].as(String?)
    end

    # :ditto:
    def level! : String
      self.["level"].as(String?).not_nil!
    end

    # :ditto:
    def level? : String?
      self.["level"]?.as(String?)
    end

    # :ditto:
    def level=(value : String?)
      self.["level"] = value
    end

    # Role is a SELinux role label that applies to the container.
    def role : String?
      self.["role"].as(String?)
    end

    # :ditto:
    def role! : String
      self.["role"].as(String?).not_nil!
    end

    # :ditto:
    def role? : String?
      self.["role"]?.as(String?)
    end

    # :ditto:
    def role=(value : String?)
      self.["role"] = value
    end

    # Type is a SELinux type label that applies to the container.
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    # User is a SELinux user label that applies to the container.
    def user : String?
      self.["user"].as(String?)
    end

    # :ditto:
    def user! : String
      self.["user"].as(String?).not_nil!
    end

    # :ditto:
    def user? : String?
      self.["user"]?.as(String?)
    end

    # :ditto:
    def user=(value : String?)
      self.["user"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "level", accessor: "level", nilable: true, read_only: false, default: nil, kind: String },
        { key: "role", accessor: "role", nilable: true, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
