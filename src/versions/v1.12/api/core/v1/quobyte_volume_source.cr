# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::QuobyteVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::QuobyteVolumeSource`.
  module Types::Api::Core::V1::QuobyteVolumeSource
    # Group to map volume access to Default is no group
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    abstract def registry : String?
    # :ditto:
    abstract def registry! : String
    # :ditto:
    abstract def registry? : String?
    # :ditto:
    abstract def registry=(value : String)
    # User to map volume access to Defaults to serivceaccount user
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String)
    # Volume is a string that references an already created Quobyte volume by name.
    abstract def volume : String?
    # :ditto:
    abstract def volume! : String
    # :ditto:
    abstract def volume? : String?
    # :ditto:
    abstract def volume=(value : String)
  end

  # Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    group: {key: "group", accessor: "group", kind: "String", nilable: true, default: nil, read_only: false, description: "Group to map volume access to Default is no group", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    registry: {key: "registry", accessor: "registry", kind: "String", nilable: false, default: nil, read_only: false, description: "Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "User to map volume access to Defaults to serivceaccount user", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume: {key: "volume", accessor: "volume", kind: "String", nilable: false, default: nil, read_only: false, description: "Volume is a string that references an already created Quobyte volume by name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::QuobyteVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::QuobyteVolumeSource
    k8s_object_accessor("group", group : String, true, false, "Group to map volume access to Default is no group")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.")
    k8s_object_accessor("registry", registry : String, false, false, "Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes")
    k8s_object_accessor("user", user : String, true, false, "User to map volume access to Defaults to serivceaccount user")
    k8s_object_accessor("volume", volume : String, false, false, "Volume is a string that references an already created Quobyte volume by name.")

    def initialize(*, group : String? = nil, read_only : ::Bool? = nil, registry : String? = nil, user : String? = nil, volume : String? = nil)
      super()
      self.["group"] = group
      self.["readOnly"] = read_only
      self.["registry"] = registry
      self.["user"] = user
      self.["volume"] = volume
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "registry", accessor: "registry", nilable: false, read_only: false, default: nil, kind: String},
      {key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volume", accessor: "volume", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
