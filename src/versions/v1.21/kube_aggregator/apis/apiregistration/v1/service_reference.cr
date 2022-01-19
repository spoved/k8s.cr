# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference; end

module K8S
  # Namespace holding the types for `KubeAggregator::Apis::Apiregistration::V1::ServiceReference`.
  module Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the name of the service
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Namespace is the namespace of the service
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
    # If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    abstract def port : Int32?
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32?)
  end

  # ServiceReference holds a reference to Service.legacy.k8s.io
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is the name of the service"},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace is the namespace of the service"},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive)."},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::ServiceReference < ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference::Instance
    include ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    include ::K8S::Kubernetes::Object

    # Name is the name of the service
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

    # Namespace is the namespace of the service
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    # If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    def port : Int32?
      self.["port"].as(Int32?)
    end

    # :ditto:
    def port! : Int32
      self.["port"].as(Int32?).not_nil!
    end

    # :ditto:
    def port? : Int32?
      self.["port"]?.as(Int32?)
    end

    # :ditto:
    def port=(value : Int32?)
      self.["port"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
