# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1beta1::Endpoint; end

require "./endpoint_conditions"
require "./endpoint_hints"
require "../../core/v1/object_reference"

module K8S
  # Namespace holding the types for `Api::Discovery::V1beta1::Endpoint`.
  module Types::Api::Discovery::V1beta1::Endpoint
    alias ValueType = ::Array(String) | ::K8S::Api::Discovery::V1beta1::EndpointConditions | ::K8S::Api::Discovery::V1beta1::EndpointHints | String | ::K8S::Api::Core::V1::ObjectReference | ::Hash(String, String) | Nil
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
    abstract def conditions : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
    # :ditto:
    abstract def conditions! : ::K8S::Api::Discovery::V1beta1::EndpointConditions
    # :ditto:
    abstract def conditions? : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
    # :ditto:
    abstract def conditions=(value : ::K8S::Api::Discovery::V1beta1::EndpointConditions?)
    # hints contains information associated with how an endpoint should be consumed.
    abstract def hints : ::K8S::Api::Discovery::V1beta1::EndpointHints?
    # :ditto:
    abstract def hints! : ::K8S::Api::Discovery::V1beta1::EndpointHints
    # :ditto:
    abstract def hints? : ::K8S::Api::Discovery::V1beta1::EndpointHints?
    # :ditto:
    abstract def hints=(value : ::K8S::Api::Discovery::V1beta1::EndpointHints?)
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
    # topology contains arbitrary topology information associated with the endpoint. These [[key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)]([key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node))
    #   where the endpoint is located. This should match the corresponding
    #   node label.
    # * [[topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)]([topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the))
    #   endpoint is located. This should match the corresponding node label.
    # * [[topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)]([topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the))
    #   endpoint is located. This should match the corresponding node label.
    # This field is deprecated and will be removed in future api versions.
    abstract def topology : ::Hash(String, String)?
    # :ditto:
    abstract def topology! : ::Hash(String, String)
    # :ditto:
    abstract def topology? : ::Hash(String, String)?
    # :ditto:
    abstract def topology=(value : ::Hash(String, String)?)
  end

  # Endpoint represents a single logical "backend" implementing a service.
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::K8S::Api::Discovery::V1beta1::EndpointConditions", nilable: true, default: nil, read_only: false, description: "conditions contains information about the current status of the endpoint."},
    hints: {key: "hints", accessor: "hints", kind: "::K8S::Api::Discovery::V1beta1::EndpointHints", nilable: true, default: nil, read_only: false, description: "hints contains information associated with how an endpoint should be consumed."},
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation."},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate."},
    target_ref: {key: "targetRef", accessor: "target_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "targetRef is a reference to a Kubernetes object that represents this endpoint."},
    topology: {key: "topology", accessor: "topology", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "topology contains arbitrary topology information associated with the endpoint. These [key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)\n  where the endpoint is located. This should match the corresponding\n  node label.\n* [topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)\n  endpoint is located. This should match the corresponding node label.\n* [topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)\n  endpoint is located. This should match the corresponding node label.\nThis field is deprecated and will be removed in future api versions."},
  )]
  class Api::Discovery::V1beta1::Endpoint < ::K8S::Types::Api::Discovery::V1beta1::Endpoint::Instance
    include ::K8S::Types::Api::Discovery::V1beta1::Endpoint
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
    def conditions : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
      self.["conditions"].as(::K8S::Api::Discovery::V1beta1::EndpointConditions?)
    end

    # :ditto:
    def conditions! : ::K8S::Api::Discovery::V1beta1::EndpointConditions
      self.["conditions"].as(::K8S::Api::Discovery::V1beta1::EndpointConditions?).not_nil!
    end

    # :ditto:
    def conditions? : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
      self.["conditions"]?.as(::K8S::Api::Discovery::V1beta1::EndpointConditions?)
    end

    # :ditto:
    def conditions=(value : ::K8S::Api::Discovery::V1beta1::EndpointConditions?)
      self.["conditions"] = value
    end

    # hints contains information associated with how an endpoint should be consumed.
    def hints : ::K8S::Api::Discovery::V1beta1::EndpointHints?
      self.["hints"].as(::K8S::Api::Discovery::V1beta1::EndpointHints?)
    end

    # :ditto:
    def hints! : ::K8S::Api::Discovery::V1beta1::EndpointHints
      self.["hints"].as(::K8S::Api::Discovery::V1beta1::EndpointHints?).not_nil!
    end

    # :ditto:
    def hints? : ::K8S::Api::Discovery::V1beta1::EndpointHints?
      self.["hints"]?.as(::K8S::Api::Discovery::V1beta1::EndpointHints?)
    end

    # :ditto:
    def hints=(value : ::K8S::Api::Discovery::V1beta1::EndpointHints?)
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

    # topology contains arbitrary topology information associated with the endpoint. These [[key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)]([key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node))
    #   where the endpoint is located. This should match the corresponding
    #   node label.
    # * [[topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)]([topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the))
    #   endpoint is located. This should match the corresponding node label.
    # * [[topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)]([topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the))
    #   endpoint is located. This should match the corresponding node label.
    # This field is deprecated and will be removed in future api versions.
    def topology : ::Hash(String, String)?
      self.["topology"].as(::Hash(String, String)?)
    end

    # :ditto:
    def topology! : ::Hash(String, String)
      self.["topology"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def topology? : ::Hash(String, String)?
      self.["topology"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def topology=(value : ::Hash(String, String)?)
      self.["topology"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "addresses", accessor: "addresses", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Discovery::V1beta1::EndpointConditions },
        { key: "hints", accessor: "hints", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Discovery::V1beta1::EndpointHints },
        { key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "targetRef", accessor: "target_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
        { key: "topology", accessor: "topology", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
      ])
end
  end
end
