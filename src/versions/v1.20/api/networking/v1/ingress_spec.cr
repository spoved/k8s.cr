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
    # DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
    abstract def default_backend : ::K8S::Api::Networking::V1::IngressBackend?
    # :ditto:
    abstract def default_backend! : ::K8S::Api::Networking::V1::IngressBackend
    # :ditto:
    abstract def default_backend? : ::K8S::Api::Networking::V1::IngressBackend?
    # :ditto:
    abstract def default_backend=(value : ::K8S::Api::Networking::V1::IngressBackend)
    # IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [[`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)]([`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.))
    abstract def ingress_class_name : String?
    # :ditto:
    abstract def ingress_class_name! : String
    # :ditto:
    abstract def ingress_class_name? : String?
    # :ditto:
    abstract def ingress_class_name=(value : String)
    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    abstract def rules : ::Array(::K8S::Api::Networking::V1::IngressRule)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Networking::V1::IngressRule)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Networking::V1::IngressRule)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Networking::V1::IngressRule))
    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    abstract def tls : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
    # :ditto:
    abstract def tls! : ::Array(::K8S::Api::Networking::V1::IngressTLS)
    # :ditto:
    abstract def tls? : ::Array(::K8S::Api::Networking::V1::IngressTLS)?
    # :ditto:
    abstract def tls=(value : ::Array(::K8S::Api::Networking::V1::IngressTLS))
  end

  # IngressSpec describes the Ingress the user wishes to exist.
  @[::K8S::Properties(
    default_backend: {key: "defaultBackend", accessor: "default_backend", kind: "::K8S::Api::Networking::V1::IngressBackend", nilable: true, default: nil, read_only: false, description: "DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ingress_class_name: {key: "ingressClassName", accessor: "ingress_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Networking::V1::IngressRule)", nilable: true, default: nil, read_only: false, description: "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    tls: {key: "tls", accessor: "tls", kind: "::Array(::K8S::Api::Networking::V1::IngressTLS)", nilable: true, default: nil, read_only: false, description: "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IngressSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::IngressSpec
    k8s_object_accessor("defaultBackend", default_backend : ::K8S::Api::Networking::V1::IngressBackend, true, false, "DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.")
    k8s_object_accessor("ingressClassName", ingress_class_name : String, true, false, "IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)")
    k8s_object_accessor("rules", rules : ::Array(::K8S::Api::Networking::V1::IngressRule), true, false, "A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.")
    k8s_object_accessor("tls", tls : ::Array(::K8S::Api::Networking::V1::IngressTLS), true, false, "TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.")

    def initialize(*, default_backend : ::K8S::Api::Networking::V1::IngressBackend? = nil, ingress_class_name : String? = nil, rules : ::Array(::K8S::Api::Networking::V1::IngressRule)? = nil, tls : ::Array(::K8S::Api::Networking::V1::IngressTLS)? = nil)
      super()
      self.["defaultBackend"] = default_backend
      self.["ingressClassName"] = ingress_class_name
      self.["rules"] = rules
      self.["tls"] = tls
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "defaultBackend", accessor: "default_backend", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Networking::V1::IngressBackend},
      {key: "ingressClassName", accessor: "ingress_class_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::IngressRule)},
      {key: "tls", accessor: "tls", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::IngressTLS)},
    ])
  end
end
