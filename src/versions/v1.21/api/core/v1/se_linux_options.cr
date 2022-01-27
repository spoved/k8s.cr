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
    abstract def level=(value : String)
    # Role is a SELinux role label that applies to the container.
    abstract def role : String?
    # :ditto:
    abstract def role! : String
    # :ditto:
    abstract def role? : String?
    # :ditto:
    abstract def role=(value : String)
    # Type is a SELinux type label that applies to the container.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
    # User is a SELinux user label that applies to the container.
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String)
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
    k8s_object_accessor("level", level : String, true, false, "Level is SELinux level label that applies to the container.")
    k8s_object_accessor("role", role : String, true, false, "Role is a SELinux role label that applies to the container.")
    k8s_object_accessor("type", type : String, true, false, "Type is a SELinux type label that applies to the container.")
    k8s_object_accessor("user", user : String, true, false, "User is a SELinux user label that applies to the container.")

    def initialize(*, level : String? = nil, role : String? = nil, type : String? = nil, user : String? = nil)
      super()
      self.["level"] = level
      self.["role"] = role
      self.["type"] = type
      self.["user"] = user
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "level", accessor: "level", nilable: true, read_only: false, default: nil, kind: String},
      {key: "role", accessor: "role", nilable: true, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
