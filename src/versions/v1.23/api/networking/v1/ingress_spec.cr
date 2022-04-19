# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_backend"
require "./ingress_rule"
require "./ingress_tls"

::K8S::Kubernetes::Resource.define_object("IngressSpec",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "default_backend", kind: ::K8S::Api::Networking::V1::IngressBackend, key: "defaultBackend", nilable: true, read_only: false, description: "DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller."},
    {name: "ingress_class_name", kind: String, key: "ingressClassName", nilable: true, read_only: false, description: "IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)"},
    {name: "rules", kind: ::Array(::K8S::Api::Networking::V1::IngressRule), key: "rules", nilable: true, read_only: false, description: "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."},
    {name: "tls", kind: ::Array(::K8S::Api::Networking::V1::IngressTLS), key: "tls", nilable: true, read_only: false, description: "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."},

  ]
)
