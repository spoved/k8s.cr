# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServicePort; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ServicePort`.
  module Types::Api::Core::V1::ServicePort
    # The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport)](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport))
    abstract def node_port : Int32?
    # :ditto:
    abstract def node_port! : Int32
    # :ditto:
    abstract def node_port? : Int32?
    # :ditto:
    abstract def node_port=(value : Int32?)
    # The port that will be exposed by this service.
    abstract def port : Int32
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # The IP protocol for this port. Supports "TCP" and "UDP". Default is TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String?)
    # Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service)](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service))
    abstract def target_port : ::Int32 | ::String?
    # :ditto:
    abstract def target_port! : ::Int32 | ::String
    # :ditto:
    abstract def target_port? : ::Int32 | ::String?
    # :ditto:
    abstract def target_port=(value : ::Int32 | ::String?)
  end

  # ServicePort contains information on service's port.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_port: {key: "nodePort", accessor: "node_port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The port that will be exposed by this service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The IP protocol for this port. Supports \"TCP\" and \"UDP\". Default is TCP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_port: {key: "targetPort", accessor: "target_port", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ServicePort < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ServicePort

    # The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service.
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

    # The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport)](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport))
    def node_port : Int32?
      self.["nodePort"].as(Int32?)
    end

    # :ditto:
    def node_port! : Int32
      self.["nodePort"].as(Int32?).not_nil!
    end

    # :ditto:
    def node_port? : Int32?
      self.["nodePort"]?.as(Int32?)
    end

    # :ditto:
    def node_port=(value : Int32?)
      self.["nodePort"] = value
    end

    # The port that will be exposed by this service.
    def port : Int32
      self.["port"].as(Int32)
    end

    # :ditto:
    def port! : Int32
      self.["port"].as(Int32).not_nil!
    end

    # :ditto:
    def port? : Int32?
      self.["port"]?.as(Int32?)
    end

    # :ditto:
    def port=(value : Int32)
      self.["port"] = value
    end

    # The IP protocol for this port. Supports "TCP" and "UDP". Default is TCP.
    def protocol : String?
      self.["protocol"].as(String?)
    end

    # :ditto:
    def protocol! : String
      self.["protocol"].as(String?).not_nil!
    end

    # :ditto:
    def protocol? : String?
      self.["protocol"]?.as(String?)
    end

    # :ditto:
    def protocol=(value : String?)
      self.["protocol"] = value
    end

    # Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service)](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service))
    def target_port : ::Int32 | ::String?
      self.["targetPort"].as(::Int32 | ::String?)
    end

    # :ditto:
    def target_port! : ::Int32 | ::String
      self.["targetPort"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def target_port? : ::Int32 | ::String?
      self.["targetPort"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def target_port=(value : ::Int32 | ::String?)
      self.["targetPort"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodePort", accessor: "node_port", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String },
        { key: "targetPort", accessor: "target_port", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
