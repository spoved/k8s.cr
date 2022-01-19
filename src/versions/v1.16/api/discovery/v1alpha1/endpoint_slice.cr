# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1alpha1::EndpointSlice; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./endpoint"
require "./endpoint_port"

module K8S
  # Namespace holding the types for `Api::Discovery::V1alpha1::EndpointSlice`.
  module Types::Api::Discovery::V1alpha1::EndpointSlice
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint) | ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. Default is IP
    abstract def address_type : String?
    # :ditto:
    abstract def address_type! : String
    # :ditto:
    abstract def address_type? : String?
    # :ditto:
    abstract def address_type=(value : String?)
    # endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
    abstract def endpoints : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?
    # :ditto:
    abstract def endpoints! : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)
    # :ditto:
    abstract def endpoints? : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?
    # :ditto:
    abstract def endpoints=(value : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?)
    # ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
    abstract def ports : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?)
  end

  # EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
  @[::K8S::GroupVersionKind(group: "discovery.k8s.io", kind: "EndpointSlice", version: "v1alpha1", full: "io.k8s.api.discovery.v1alpha1.EndpointSlice")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "discovery/v1alpha1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "EndpointSlice", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    address_type: {key: "addressType", accessor: "address_type", kind: "String", nilable: true, default: nil, read_only: false, description: "addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. Default is IP"},
    endpoints: {key: "endpoints", accessor: "endpoints", kind: "::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)", nilable: true, default: nil, read_only: false, description: "endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints."},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)", nilable: true, default: nil, read_only: false, description: "ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports."},
  )]
  class Api::Discovery::V1alpha1::EndpointSlice < ::K8S::Types::Api::Discovery::V1alpha1::EndpointSlice::Instance
    include ::K8S::Types::Api::Discovery::V1alpha1::EndpointSlice
    include ::K8S::Kubernetes::Resource::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. Default is IP
    def address_type : String?
      self.["addressType"].as(String?)
    end

    # :ditto:
    def address_type! : String
      self.["addressType"].as(String?).not_nil!
    end

    # :ditto:
    def address_type? : String?
      self.["addressType"]?.as(String?)
    end

    # :ditto:
    def address_type=(value : String?)
      self.["addressType"] = value
    end

    # endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
    def endpoints : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?
      self.["endpoints"].as(::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?)
    end

    # :ditto:
    def endpoints! : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)
      self.["endpoints"].as(::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?).not_nil!
    end

    # :ditto:
    def endpoints? : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?
      self.["endpoints"]?.as(::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?)
    end

    # :ditto:
    def endpoints=(value : ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint)?)
      self.["endpoints"] = value
    end

    # ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
    def ports : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?
      self.["ports"].as(::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)
      self.["ports"].as(::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?
      self.["ports"]?.as(::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort)?)
      self.["ports"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "discovery/v1alpha1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "EndpointSlice", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "addressType", accessor: "address_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "endpoints", accessor: "endpoints", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint) },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort) },
      ])
end
  end

  module Resources::Discovery::V1alpha1
    alias EndpointSlice = ::K8S::Api::Discovery::V1alpha1::EndpointSlice
  end
end
