# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # IngressSpec describes the Ingress the user wishes to exist.
  class Api::Networking::V1beta1::IngressSpec
    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    property backend : Api::Networking::V1beta1::IngressBackend | Nil

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    property rules : Array(Api::Networking::V1beta1::IngressRule) | Nil

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    property tls : Array(Api::Networking::V1beta1::IngressTLS) | Nil

    ::YAML.mapping({
      backend: {type: Api::Networking::V1beta1::IngressBackend, nilable: true, key: "backend", getter: false, setter: false},
      rules:   {type: Array(Api::Networking::V1beta1::IngressRule), nilable: true, key: "rules", getter: false, setter: false},
      tls:     {type: Array(Api::Networking::V1beta1::IngressTLS), nilable: true, key: "tls", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      backend: {type: Api::Networking::V1beta1::IngressBackend, nilable: true, key: "backend", getter: false, setter: false},
      rules:   {type: Array(Api::Networking::V1beta1::IngressRule), nilable: true, key: "rules", getter: false, setter: false},
      tls:     {type: Array(Api::Networking::V1beta1::IngressTLS), nilable: true, key: "tls", getter: false, setter: false},
    }, true)

    def initialize(*, @backend : Api::Networking::V1beta1::IngressBackend | Nil = nil, @rules : Array | Nil = nil, @tls : Array | Nil = nil)
    end
  end
end
