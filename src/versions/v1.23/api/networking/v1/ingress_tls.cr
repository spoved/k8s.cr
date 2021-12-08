# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressTLS describes the transport layer security associated with an Ingress.
  @[::K8S::Properties(
    hosts: {type: Array(String), nilable: true, key: "hosts", getter: false, setter: false},
    secret_name: {type: String, nilable: true, key: "secretName", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressTLS
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    @[::JSON::Field(key: "hosts", emit_null: false)]
    @[::YAML::Field(key: "hosts", emit_null: false)]
    property hosts : Array(String) | Nil

    # SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
    @[::JSON::Field(key: "secretName", emit_null: false)]
    @[::YAML::Field(key: "secretName", emit_null: false)]
    property secret_name : String | Nil

    def initialize(*, @hosts : Array | Nil = nil, @secret_name : String | Nil = nil)
    end
  end
end
