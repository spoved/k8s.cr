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
    abstract def group=(value : String?)
    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    abstract def registry : String
    # :ditto:
    abstract def registry! : String
    # :ditto:
    abstract def registry? : String?
    # :ditto:
    abstract def registry=(value : String)
    # Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
    abstract def tenant : String?
    # :ditto:
    abstract def tenant! : String
    # :ditto:
    abstract def tenant? : String?
    # :ditto:
    abstract def tenant=(value : String?)
    # User to map volume access to Defaults to serivceaccount user
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String?)
    # Volume is a string that references an already created Quobyte volume by name.
    abstract def volume : String
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
    tenant: {key: "tenant", accessor: "tenant", kind: "String", nilable: true, default: nil, read_only: false, description: "Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "User to map volume access to Defaults to serivceaccount user", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume: {key: "volume", accessor: "volume", kind: "String", nilable: false, default: nil, read_only: false, description: "Volume is a string that references an already created Quobyte volume by name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::QuobyteVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::QuobyteVolumeSource

    # Group to map volume access to Default is no group
    def group : String?
      self.["group"].as(String?)
    end

    # :ditto:
    def group! : String
      self.["group"].as(String?).not_nil!
    end

    # :ditto:
    def group? : String?
      self.["group"]?.as(String?)
    end

    # :ditto:
    def group=(value : String?)
      self.["group"] = value
    end

    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
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

    # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    def registry : String
      self.["registry"].as(String)
    end

    # :ditto:
    def registry! : String
      self.["registry"].as(String).not_nil!
    end

    # :ditto:
    def registry? : String?
      self.["registry"]?.as(String?)
    end

    # :ditto:
    def registry=(value : String)
      self.["registry"] = value
    end

    # Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
    def tenant : String?
      self.["tenant"].as(String?)
    end

    # :ditto:
    def tenant! : String
      self.["tenant"].as(String?).not_nil!
    end

    # :ditto:
    def tenant? : String?
      self.["tenant"]?.as(String?)
    end

    # :ditto:
    def tenant=(value : String?)
      self.["tenant"] = value
    end

    # User to map volume access to Defaults to serivceaccount user
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

    # Volume is a string that references an already created Quobyte volume by name.
    def volume : String
      self.["volume"].as(String)
    end

    # :ditto:
    def volume! : String
      self.["volume"].as(String).not_nil!
    end

    # :ditto:
    def volume? : String?
      self.["volume"]?.as(String?)
    end

    # :ditto:
    def volume=(value : String)
      self.["volume"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "registry", accessor: "registry", nilable: false, read_only: false, default: nil, kind: String },
        { key: "tenant", accessor: "tenant", nilable: true, read_only: false, default: nil, kind: String },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volume", accessor: "volume", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
