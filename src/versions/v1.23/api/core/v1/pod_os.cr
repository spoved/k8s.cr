# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodOS; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodOS`.
  module Types::Api::Core::V1::PodOS
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: [[https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null)](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null))
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # PodOS defines the OS parameters of a pod.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: [https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null)"},
  )]
  class Api::Core::V1::PodOS < ::K8S::Types::Api::Core::V1::PodOS::Instance
    include ::K8S::Types::Api::Core::V1::PodOS
    include ::K8S::Kubernetes::Object

    # Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: [[https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null)](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null))
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
