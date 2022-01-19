# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::HostAlias; end

module K8S
  # Namespace holding the types for `Api::Core::V1::HostAlias`.
  module Types::Api::Core::V1::HostAlias
    alias ValueType = ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Hostnames for the above IP address.
    abstract def hostnames : ::Array(String)?
    # :ditto:
    abstract def hostnames! : ::Array(String)
    # :ditto:
    abstract def hostnames? : ::Array(String)?
    # :ditto:
    abstract def hostnames=(value : ::Array(String)?)
    # IP address of the host file entry.
    abstract def ip : String?
    # :ditto:
    abstract def ip! : String
    # :ditto:
    abstract def ip? : String?
    # :ditto:
    abstract def ip=(value : String?)
  end

  # HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
  @[::K8S::Properties(
    hostnames: {key: "hostnames", accessor: "hostnames", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Hostnames for the above IP address."},
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: true, default: nil, read_only: false, description: "IP address of the host file entry."},
  )]
  class Api::Core::V1::HostAlias < ::K8S::Types::Api::Core::V1::HostAlias::Instance
    include ::K8S::Types::Api::Core::V1::HostAlias
    include ::K8S::Kubernetes::Object

    # Hostnames for the above IP address.
    def hostnames : ::Array(String)?
      self.["hostnames"].as(::Array(String)?)
    end

    # :ditto:
    def hostnames! : ::Array(String)
      self.["hostnames"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def hostnames? : ::Array(String)?
      self.["hostnames"]?.as(::Array(String)?)
    end

    # :ditto:
    def hostnames=(value : ::Array(String)?)
      self.["hostnames"] = value
    end

    # IP address of the host file entry.
    def ip : String?
      self.["ip"].as(String?)
    end

    # :ditto:
    def ip! : String
      self.["ip"].as(String?).not_nil!
    end

    # :ditto:
    def ip? : String?
      self.["ip"]?.as(String?)
    end

    # :ditto:
    def ip=(value : String?)
      self.["ip"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hostnames", accessor: "hostnames", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "ip", accessor: "ip", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
