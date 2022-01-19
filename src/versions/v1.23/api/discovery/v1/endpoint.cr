# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1::Endpoint; end

require "./endpoint_conditions"
require "./endpoint_hints"
require "../../core/v1/object_reference"

module K8S
  # Namespace holding the types for `Api::Discovery::V1::Endpoint`.
  module Types::Api::Discovery::V1::Endpoint
    alias ValueType = ::Array(String) | ::K8S::Api::Discovery::V1::EndpointConditions | ::Hash(String, String) | ::K8S::Api::Discovery::V1::EndpointHints | String | ::K8S::Api::Core::V1::ObjectReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
    abstract def addresses : ::Array(String)
    # :ditto:
    abstract def addresses! : ::Array(String)
    # :ditto:
    abstract def addresses? : ::Array(String)?
    # :ditto:
    abstract def addresses=(value : ::Array(String))
    # conditions contains information about the current status of the endpoint.
    abstract def conditions : ::K8S::Api::Discovery::V1::EndpointConditions?
    # :ditto:
    abstract def conditions! : ::K8S::Api::Discovery::V1::EndpointConditions
    # :ditto:
    abstract def conditions? : ::K8S::Api::Discovery::V1::EndpointConditions?
    # :ditto:
    abstract def conditions=(value : ::K8S::Api::Discovery::V1::EndpointConditions?)
    # deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
    abstract def deprecated_topology : ::Hash(String, String)?
    # :ditto:
    abstract def deprecated_topology! : ::Hash(String, String)
    # :ditto:
    abstract def deprecated_topology? : ::Hash(String, String)?
    # :ditto:
    abstract def deprecated_topology=(value : ::Hash(String, String)?)
    # hints contains information associated with how an endpoint should be consumed.
    abstract def hints : ::K8S::Api::Discovery::V1::EndpointHints?
    # :ditto:
    abstract def hints! : ::K8S::Api::Discovery::V1::EndpointHints
    # :ditto:
    abstract def hints? : ::K8S::Api::Discovery::V1::EndpointHints?
    # :ditto:
    abstract def hints=(value : ::K8S::Api::Discovery::V1::EndpointHints?)
    # hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String?)
    # nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String?)
    # targetRef is a reference to a Kubernetes object that represents this endpoint.
    abstract def target_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
    # zone is the name of the Zone this endpoint exists in.
    abstract def zone : String?
    # :ditto:
    abstract def zone! : String
    # :ditto:
    abstract def zone? : String?
    # :ditto:
    abstract def zone=(value : String?)
  end

  # Endpoint represents a single logical "backend" implementing a service.
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::K8S::Api::Discovery::V1::EndpointConditions", nilable: true, default: nil, read_only: false, description: "conditions contains information about the current status of the endpoint."},
    deprecated_topology: {key: "deprecatedTopology", accessor: "deprecated_topology", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead."},
    hints: {key: "hints", accessor: "hints", kind: "::K8S::Api::Discovery::V1::EndpointHints", nilable: true, default: nil, read_only: false, description: "hints contains information associated with how an endpoint should be consumed."},
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation."},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate."},
    target_ref: {key: "targetRef", accessor: "target_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "targetRef is a reference to a Kubernetes object that represents this endpoint."},
    zone: {key: "zone", accessor: "zone", kind: "String", nilable: true, default: nil, read_only: false, description: "zone is the name of the Zone this endpoint exists in."},
  )]
  class Api::Discovery::V1::Endpoint < ::K8S::Types::Api::Discovery::V1::Endpoint::Instance
    include ::K8S::Types::Api::Discovery::V1::Endpoint
    include ::K8S::Kubernetes::Object

    # addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
    def addresses : ::Array(String)
      self.["addresses"].as(::Array(String))
    end

    # :ditto:
    def addresses! : ::Array(String)
      self.["addresses"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def addresses? : ::Array(String)?
      self.["addresses"]?.as(::Array(String)?)
    end

    # :ditto:
    def addresses=(value : ::Array(String))
      self.["addresses"] = value
    end

    # conditions contains information about the current status of the endpoint.
    def conditions : ::K8S::Api::Discovery::V1::EndpointConditions?
      self.["conditions"].as(::K8S::Api::Discovery::V1::EndpointConditions?)
    end

    # :ditto:
    def conditions! : ::K8S::Api::Discovery::V1::EndpointConditions
      self.["conditions"].as(::K8S::Api::Discovery::V1::EndpointConditions?).not_nil!
    end

    # :ditto:
    def conditions? : ::K8S::Api::Discovery::V1::EndpointConditions?
      self.["conditions"]?.as(::K8S::Api::Discovery::V1::EndpointConditions?)
    end

    # :ditto:
    def conditions=(value : ::K8S::Api::Discovery::V1::EndpointConditions?)
      self.["conditions"] = value
    end

    # deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
    def deprecated_topology : ::Hash(String, String)?
      self.["deprecatedTopology"].as(::Hash(String, String)?)
    end

    # :ditto:
    def deprecated_topology! : ::Hash(String, String)
      self.["deprecatedTopology"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def deprecated_topology? : ::Hash(String, String)?
      self.["deprecatedTopology"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def deprecated_topology=(value : ::Hash(String, String)?)
      self.["deprecatedTopology"] = value
    end

    # hints contains information associated with how an endpoint should be consumed.
    def hints : ::K8S::Api::Discovery::V1::EndpointHints?
      self.["hints"].as(::K8S::Api::Discovery::V1::EndpointHints?)
    end

    # :ditto:
    def hints! : ::K8S::Api::Discovery::V1::EndpointHints
      self.["hints"].as(::K8S::Api::Discovery::V1::EndpointHints?).not_nil!
    end

    # :ditto:
    def hints? : ::K8S::Api::Discovery::V1::EndpointHints?
      self.["hints"]?.as(::K8S::Api::Discovery::V1::EndpointHints?)
    end

    # :ditto:
    def hints=(value : ::K8S::Api::Discovery::V1::EndpointHints?)
      self.["hints"] = value
    end

    # hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
    def hostname : String?
      self.["hostname"].as(String?)
    end

    # :ditto:
    def hostname! : String
      self.["hostname"].as(String?).not_nil!
    end

    # :ditto:
    def hostname? : String?
      self.["hostname"]?.as(String?)
    end

    # :ditto:
    def hostname=(value : String?)
      self.["hostname"] = value
    end

    # nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
    def node_name : String?
      self.["nodeName"].as(String?)
    end

    # :ditto:
    def node_name! : String
      self.["nodeName"].as(String?).not_nil!
    end

    # :ditto:
    def node_name? : String?
      self.["nodeName"]?.as(String?)
    end

    # :ditto:
    def node_name=(value : String?)
      self.["nodeName"] = value
    end

    # targetRef is a reference to a Kubernetes object that represents this endpoint.
    def target_ref : ::K8S::Api::Core::V1::ObjectReference?
      self.["targetRef"].as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def target_ref! : ::K8S::Api::Core::V1::ObjectReference
      self.["targetRef"].as(::K8S::Api::Core::V1::ObjectReference?).not_nil!
    end

    # :ditto:
    def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
      self.["targetRef"]?.as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
      self.["targetRef"] = value
    end

    # zone is the name of the Zone this endpoint exists in.
    def zone : String?
      self.["zone"].as(String?)
    end

    # :ditto:
    def zone! : String
      self.["zone"].as(String?).not_nil!
    end

    # :ditto:
    def zone? : String?
      self.["zone"]?.as(String?)
    end

    # :ditto:
    def zone=(value : String?)
      self.["zone"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "addresses", accessor: "addresses", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Discovery::V1::EndpointConditions },
        { key: "deprecatedTopology", accessor: "deprecated_topology", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "hints", accessor: "hints", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Discovery::V1::EndpointHints },
        { key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "targetRef", accessor: "target_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
        { key: "zone", accessor: "zone", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
