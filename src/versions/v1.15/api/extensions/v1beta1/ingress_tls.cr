# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IngressTLS",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "hosts", kind: ::Array(String), key: "hosts", nilable: true, read_only: false, description: "Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified."},
    {name: "secret_name", kind: String, key: "secretName", nilable: true, read_only: false, description: "SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the \"Host\" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing."},

  ]
)
