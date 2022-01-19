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
    alias ValueType = ::K8S::Api::Extensions::V1beta1::IngressBackend | ::Array(::K8S::Api::Extensions::V1beta1::IngressRule) | ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    abstract def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
    # :ditto:
    abstract def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend?)
    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    abstract def rules : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?)
    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    abstract def tls : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
    # :ditto:
    abstract def tls! : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)
    # :ditto:
    abstract def tls? : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
    # :ditto:
    abstract def tls=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?)
  end

  # IngressSpec describes the Ingress the user wishes to exist.
  @[::K8S::Properties(
    backend: {key: "backend", accessor: "backend", kind: "::K8S::Api::Extensions::V1beta1::IngressBackend", nilable: true, default: nil, read_only: false, description: "A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default."},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Extensions::V1beta1::IngressRule)", nilable: true, default: nil, read_only: false, description: "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."},
    tls: {key: "tls", accessor: "tls", kind: "::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)", nilable: true, default: nil, read_only: false, description: "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."},
  )]
  class Api::Extensions::V1beta1::IngressSpec < ::K8S::Types::Api::Extensions::V1beta1::IngressSpec::Instance
    include ::K8S::Types::Api::Extensions::V1beta1::IngressSpec
    include ::K8S::Kubernetes::Object

    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend?
      self.["backend"].as(::K8S::Api::Extensions::V1beta1::IngressBackend?)
    end

    # :ditto:
    def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
      self.["backend"].as(::K8S::Api::Extensions::V1beta1::IngressBackend?).not_nil!
    end

    # :ditto:
    def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
      self.["backend"]?.as(::K8S::Api::Extensions::V1beta1::IngressBackend?)
    end

    # :ditto:
    def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend?)
      self.["backend"] = value
    end

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    def rules : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
      self.["rules"].as(::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?)
    end

    # :ditto:
    def rules! : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)
      self.["rules"].as(::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?).not_nil!
    end

    # :ditto:
    def rules? : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?
      self.["rules"]?.as(::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?)
    end

    # :ditto:
    def rules=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressRule)?)
      self.["rules"] = value
    end

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    def tls : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
      self.["tls"].as(::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?)
    end

    # :ditto:
    def tls! : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)
      self.["tls"].as(::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?).not_nil!
    end

    # :ditto:
    def tls? : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?
      self.["tls"]?.as(::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?)
    end

    # :ditto:
    def tls=(value : ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS)?)
      self.["tls"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "backend", accessor: "backend", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::IngressBackend },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::IngressRule) },
        { key: "tls", accessor: "tls", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::IngressTLS) },
      ])
end
  end
end
