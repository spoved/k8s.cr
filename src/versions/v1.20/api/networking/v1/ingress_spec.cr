# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressSpec; end

require "./ingress_backend"
require "./ingress_rule"
require "./ingress_tls"

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressSpec`.
  module Types::Api::Networking::V1::IngressSpec
    alias ValueType = ::K8S::Api::Networking::V1::IngressBackend | String | ::Array(::K8S::Api::Networking::V1::IngressRule) | ::Array(::K8S::Api::Networking::V1::IngressTLS) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
    abstract def default_backend : ::K8S::Api::Networking::V1::IngressBackend?
    # :ditto:
    abstract def default_backend! : ::K8S::Api::Networking::V1::IngressBackend
    # :ditto:
    abstract def default_backend? : ::K8S::Api::Networking::V1::IngressBackend?
    # :ditto:
    abstract def default_backend=(value : ::K8S::Api::Networking::V1::IngressBackend?)
    # IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [[`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)]([`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.))
    abstract def ingress_class_name : String?
    # :ditto:
    abstract def ingress_class_name! : String
    # :ditto:
    abstract def ingress_class_name? : String?
    # :ditto:
    abstract def ingress_class_name=(value : String?)
    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    abstract def rules : ::Array(::K8S::Api::Networking::V1::IngressRule)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Networking::V1::IngressRule)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Networking::V1::IngressRule)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Networking::V1::IngressRule)?)
    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    abstract def tls : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
    # :ditto:
    abstract def tls! : ::Array(::K8S::Api::Networking::V1::IngressTLS)
    # :ditto:
    abstract def tls? : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
    # :ditto:
    abstract def tls=(value : ::Array(::K8S::Api::Networking::V1::IngressTLS)?)
  end

  # IngressSpec describes the Ingress the user wishes to exist.
  @[::K8S::Properties(
    default_backend: {key: "defaultBackend", accessor: "default_backend", kind: "::K8S::Api::Networking::V1::IngressBackend", nilable: true, default: nil, read_only: false, description: "DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller."},
    ingress_class_name: {key: "ingressClassName", accessor: "ingress_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)"},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Networking::V1::IngressRule)", nilable: true, default: nil, read_only: false, description: "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend."},
    tls: {key: "tls", accessor: "tls", kind: "::Array(::K8S::Api::Networking::V1::IngressTLS)", nilable: true, default: nil, read_only: false, description: "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI."},
  )]
  class Api::Networking::V1::IngressSpec < ::K8S::Types::Api::Networking::V1::IngressSpec::Instance
    include ::K8S::Types::Api::Networking::V1::IngressSpec
    include ::K8S::Kubernetes::Object

    # DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
    def default_backend : ::K8S::Api::Networking::V1::IngressBackend?
      self.["defaultBackend"].as(::K8S::Api::Networking::V1::IngressBackend?)
    end

    # :ditto:
    def default_backend! : ::K8S::Api::Networking::V1::IngressBackend
      self.["defaultBackend"].as(::K8S::Api::Networking::V1::IngressBackend?).not_nil!
    end

    # :ditto:
    def default_backend? : ::K8S::Api::Networking::V1::IngressBackend?
      self.["defaultBackend"]?.as(::K8S::Api::Networking::V1::IngressBackend?)
    end

    # :ditto:
    def default_backend=(value : ::K8S::Api::Networking::V1::IngressBackend?)
      self.["defaultBackend"] = value
    end

    # IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [[`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)]([`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.))
    def ingress_class_name : String?
      self.["ingressClassName"].as(String?)
    end

    # :ditto:
    def ingress_class_name! : String
      self.["ingressClassName"].as(String?).not_nil!
    end

    # :ditto:
    def ingress_class_name? : String?
      self.["ingressClassName"]?.as(String?)
    end

    # :ditto:
    def ingress_class_name=(value : String?)
      self.["ingressClassName"] = value
    end

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    def rules : ::Array(::K8S::Api::Networking::V1::IngressRule)?
      self.["rules"].as(::Array(::K8S::Api::Networking::V1::IngressRule)?)
    end

    # :ditto:
    def rules! : ::Array(::K8S::Api::Networking::V1::IngressRule)
      self.["rules"].as(::Array(::K8S::Api::Networking::V1::IngressRule)?).not_nil!
    end

    # :ditto:
    def rules? : ::Array(::K8S::Api::Networking::V1::IngressRule)?
      self.["rules"]?.as(::Array(::K8S::Api::Networking::V1::IngressRule)?)
    end

    # :ditto:
    def rules=(value : ::Array(::K8S::Api::Networking::V1::IngressRule)?)
      self.["rules"] = value
    end

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    def tls : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
      self.["tls"].as(::Array(::K8S::Api::Networking::V1::IngressTLS)?)
    end

    # :ditto:
    def tls! : ::Array(::K8S::Api::Networking::V1::IngressTLS)
      self.["tls"].as(::Array(::K8S::Api::Networking::V1::IngressTLS)?).not_nil!
    end

    # :ditto:
    def tls? : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
      self.["tls"]?.as(::Array(::K8S::Api::Networking::V1::IngressTLS)?)
    end

    # :ditto:
    def tls=(value : ::Array(::K8S::Api::Networking::V1::IngressTLS)?)
      self.["tls"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "defaultBackend", accessor: "default_backend", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Networking::V1::IngressBackend },
        { key: "ingressClassName", accessor: "ingress_class_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::IngressRule) },
        { key: "tls", accessor: "tls", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::IngressTLS) },
      ])
end
  end
end
