# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressTLS; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressTLS`.
  module Types::Api::Networking::V1::IngressTLS
    alias ValueType = ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    abstract def hosts : ::Array(String)?
    # :ditto:
    abstract def hosts! : ::Array(String)
    # :ditto:
    abstract def hosts? : ::Array(String)?
    # :ditto:
    abstract def hosts=(value : ::Array(String)?)
    # SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
    abstract def secret_name : String?
    # :ditto:
    abstract def secret_name! : String
    # :ditto:
    abstract def secret_name? : String?
    # :ditto:
    abstract def secret_name=(value : String?)
  end

  # IngressTLS describes the transport layer security associated with an Ingress.
  @[::K8S::Properties(
    hosts: {key: "hosts", accessor: "hosts", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    secret_name: {key: "secretName", accessor: "secret_name", kind: "String", nilable: true, default: nil, read_only: false, description: "SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the \"Host\" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IngressTLS < ::K8S::Types::Api::Networking::V1::IngressTLS::Instance
    include ::K8S::Types::Api::Networking::V1::IngressTLS
    include ::K8S::Kubernetes::Object

    # Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    def hosts : ::Array(String)?
      self.["hosts"].as(::Array(String)?)
    end

    # :ditto:
    def hosts! : ::Array(String)
      self.["hosts"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def hosts? : ::Array(String)?
      self.["hosts"]?.as(::Array(String)?)
    end

    # :ditto:
    def hosts=(value : ::Array(String)?)
      self.["hosts"] = value
    end

    # SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
    def secret_name : String?
      self.["secretName"].as(String?)
    end

    # :ditto:
    def secret_name! : String
      self.["secretName"].as(String?).not_nil!
    end

    # :ditto:
    def secret_name? : String?
      self.["secretName"]?.as(String?)
    end

    # :ditto:
    def secret_name=(value : String?)
      self.["secretName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hosts", accessor: "hosts", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "secretName", accessor: "secret_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
