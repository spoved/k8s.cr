# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1beta1::Endpoint; end

require "./endpoint_conditions"
require "../../core/v1/object_reference"

module K8S
  # Namespace holding the types for `Api::Discovery::V1beta1::Endpoint`.
  module Types::Api::Discovery::V1beta1::Endpoint
    # addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
    abstract def addresses : ::Set(String)?
    # :ditto:
    abstract def addresses! : ::Set(String)
    # :ditto:
    abstract def addresses? : ::Set(String)?
    # :ditto:
    abstract def addresses=(value : ::Set(String))
    # conditions contains information about the current status of the endpoint.
    abstract def conditions : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
    # :ditto:
    abstract def conditions! : ::K8S::Api::Discovery::V1beta1::EndpointConditions
    # :ditto:
    abstract def conditions? : ::K8S::Api::Discovery::V1beta1::EndpointConditions?
    # :ditto:
    abstract def conditions=(value : ::K8S::Api::Discovery::V1beta1::EndpointConditions)
    # hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String)
    # nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String)
    # targetRef is a reference to a Kubernetes object that represents this endpoint.
    abstract def target_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference)
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
    abstract def topology=(value : ::Hash(String, String))
  end

  # Endpoint represents a single logical "backend" implementing a service.
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::K8S::Api::Discovery::V1beta1::EndpointConditions", nilable: true, default: nil, read_only: false, description: "conditions contains information about the current status of the endpoint.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_ref: {key: "targetRef", accessor: "target_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "targetRef is a reference to a Kubernetes object that represents this endpoint.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    topology: {key: "topology", accessor: "topology", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "topology contains arbitrary topology information associated with the endpoint. These [key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)\n  where the endpoint is located. This should match the corresponding\n  node label.\n* [topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)\n  endpoint is located. This should match the corresponding node label.\n* [topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)\n  endpoint is located. This should match the corresponding node label.\nThis field is deprecated and will be removed in future api versions.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Discovery::V1beta1::Endpoint < ::K8S::GenericObject
    include ::K8S::Types::Api::Discovery::V1beta1::Endpoint
    k8s_object_accessor("addresses", addresses : ::Set(String), false, false, "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.")
    k8s_object_accessor("conditions", conditions : ::K8S::Api::Discovery::V1beta1::EndpointConditions, true, false, "conditions contains information about the current status of the endpoint.")
    k8s_object_accessor("hostname", hostname : String, true, false, "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.")
    k8s_object_accessor("nodeName", node_name : String, true, false, "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.")
    k8s_object_accessor("targetRef", target_ref : ::K8S::Api::Core::V1::ObjectReference, true, false, "targetRef is a reference to a Kubernetes object that represents this endpoint.")
    k8s_object_accessor("topology", topology : ::Hash(String, String), true, false, "topology contains arbitrary topology information associated with the endpoint. These [key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)\n  where the endpoint is located. This should match the corresponding\n  node label.\n* [topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)\n  endpoint is located. This should match the corresponding node label.\n* [topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)\n  endpoint is located. This should match the corresponding node label.\nThis field is deprecated and will be removed in future api versions.")

    def initialize(*, addresses : ::Set(String)? = nil, conditions : ::K8S::Api::Discovery::V1beta1::EndpointConditions? = nil, hostname : String? = nil, node_name : String? = nil, target_ref : ::K8S::Api::Core::V1::ObjectReference? = nil, topology : ::Hash(String, String)? = nil)
      super()
      self.["addresses"] = addresses
      self.["conditions"] = conditions
      self.["hostname"] = hostname
      self.["nodeName"] = node_name
      self.["targetRef"] = target_ref
      self.["topology"] = topology
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "addresses", accessor: "addresses", nilable: false, read_only: false, default: nil, kind: ::Set(String)},
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Discovery::V1beta1::EndpointConditions},
      {key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String},
      {key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "targetRef", accessor: "target_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "topology", accessor: "topology", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
    ])
  end
end
