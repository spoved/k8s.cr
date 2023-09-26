# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_backend"
require "./ingress_rule"
require "./ingress_tls"

::K8S::Kubernetes::Resource.define_object("IngressSpec",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "default_backend", kind: ::K8S::Api::Networking::V1::IngressBackend, key: "defaultBackend", nilable: true, read_only: false, description: "defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller."},
    {name: "ingress_class_name", kind: String, key: "ingressClassName", nilable: true, read_only: false, description: "ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the [`kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.](`kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.)"},
    {name: "rules", kind: ::Array(::K8S::Api::Networking::V1::IngressRule), key: "rules", nilable: true, read_only: false, description: "rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."},
    {name: "tls", kind: ::Array(::K8S::Api::Networking::V1::IngressTLS), key: "tls", nilable: true, read_only: false, description: "tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."},

  ]
)
