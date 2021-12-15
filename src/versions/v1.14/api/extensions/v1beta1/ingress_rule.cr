# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
  @[::K8S::Properties(
    host: {type: String, nilable: true, key: "host", getter: false, setter: false},
    http: {type: Api::Extensions::V1beta1::HTTPIngressRuleValue, nilable: true, key: "http", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::IngressRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the
    # 	  IP in the Spec of the parent Ingress.
    # 2. The `:` delimiter is not respected because ports are not allowed.
    # 	  Currently the port of an Ingress is implicitly :80 for http and
    # 	  :443 for https.
    # Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
    @[::JSON::Field(key: "host", emit_null: false)]
    @[::YAML::Field(key: "host", emit_null: false)]
    property host : String | Nil

    @[::JSON::Field(key: "http", emit_null: false)]
    @[::YAML::Field(key: "http", emit_null: false)]
    property http : Api::Extensions::V1beta1::HTTPIngressRuleValue | Nil

    def initialize(*, @host : String | Nil = nil, @http : Api::Extensions::V1beta1::HTTPIngressRuleValue | Nil = nil)
    end
  end
end
