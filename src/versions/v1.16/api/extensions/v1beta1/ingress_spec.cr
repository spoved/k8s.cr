# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::IngressSpec; end

require "./ingress_backend"
require "./ingress_rule"
require "./ingress_tls"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::IngressSpec`.
  module Types::Api::Extensions::V1beta1::IngressSpec
    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    abstract def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
    # :ditto:
    abstract def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend)
    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    abstract def rules : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule))
    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    abstract def tls : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
    # :ditto:
    abstract def tls! : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)
    # :ditto:
    abstract def tls? : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
    # :ditto:
    abstract def tls=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS))
  end

  # IngressSpec describes the Ingress the user wishes to exist.
  @[::K8S::Properties(
    backend: {key: "backend", accessor: "backend", kind: "::K8S::Api::Extensions::V1beta1::IngressBackend", nilable: true, default: nil, read_only: false, description: "A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Extensions::V1beta1::IngressRule)", nilable: true, default: nil, read_only: false, description: "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tls: {key: "tls", accessor: "tls", kind: "::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)", nilable: true, default: nil, read_only: false, description: "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::IngressSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::IngressSpec
    k8s_object_accessor("backend", backend : ::K8S::Api::Extensions::V1beta1::IngressBackend, true, false, "A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.")
    k8s_object_accessor("rules", rules : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule), true, false, "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.")
    k8s_object_accessor("tls", tls : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS), true, false, "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.")

    def initialize(*, backend : ::K8S::Api::Extensions::V1beta1::IngressBackend? = nil, rules : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)? = nil, tls : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)? = nil)
      super()
      self.["backend"] = backend
      self.["rules"] = rules
      self.["tls"] = tls
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "backend", accessor: "backend", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::IngressBackend},
      {key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)},
      {key: "tls", accessor: "tls", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)},
    ])
  end
end
