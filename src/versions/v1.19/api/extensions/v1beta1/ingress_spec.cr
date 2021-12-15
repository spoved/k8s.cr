# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressSpec describes the Ingress the user wishes to exist.
  @[::K8S::Properties(
    backend: {type: Api::Extensions::V1beta1::IngressBackend, nilable: true, key: "backend", getter: false, setter: false},
    ingress_class_name: {type: String, nilable: true, key: "ingressClassName", getter: false, setter: false},
    rules: {type: Array(Api::Extensions::V1beta1::IngressRule), nilable: true, key: "rules", getter: false, setter: false},
    tls: {type: Array(Api::Extensions::V1beta1::IngressTLS), nilable: true, key: "tls", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::IngressSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    @[::JSON::Field(key: "backend", emit_null: false)]
    @[::YAML::Field(key: "backend", emit_null: false)]
    property backend : Api::Extensions::V1beta1::IngressBackend | Nil

    # IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)
    @[::JSON::Field(key: "ingressClassName", emit_null: false)]
    @[::YAML::Field(key: "ingressClassName", emit_null: false)]
    property ingress_class_name : String | Nil

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    @[::JSON::Field(key: "rules", emit_null: false)]
    @[::YAML::Field(key: "rules", emit_null: false)]
    property rules : Array(Api::Extensions::V1beta1::IngressRule) | Nil

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    @[::JSON::Field(key: "tls", emit_null: false)]
    @[::YAML::Field(key: "tls", emit_null: false)]
    property tls : Array(Api::Extensions::V1beta1::IngressTLS) | Nil

    def initialize(*, @backend : Api::Extensions::V1beta1::IngressBackend | Nil = nil, @ingress_class_name : String | Nil = nil, @rules : Array | Nil = nil, @tls : Array | Nil = nil)
    end
  end
end
