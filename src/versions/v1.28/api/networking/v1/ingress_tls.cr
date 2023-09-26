# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IngressTLS",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "hosts", kind: ::Array(String), key: "hosts", nilable: true, read_only: false, description: "hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified."},
    {name: "secret_name", kind: String, key: "secretName", nilable: true, read_only: false, description: "secretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the \"Host\" header field used by an IngressRule, the SNI host is used for termination and value of the \"Host\" header is used for routing."},

  ]
)
