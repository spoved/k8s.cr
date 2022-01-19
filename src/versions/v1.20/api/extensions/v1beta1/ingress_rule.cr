# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::IngressRule; end

require "./http_ingress_rule_value"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::IngressRule`.
  module Types::Api::Extensions::V1beta1::IngressRule
    alias ValueType = String | ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to
    #    the IP in the Spec of the parent Ingress.
    # 2. The `:` delimiter is not respected because ports are not allowed.
    # 	  Currently the port of an Ingress is implicitly :80 for http and
    # 	  :443 for https.
    # Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
    #
    # Host can be "precise" which is a domain name without the terminating dot of a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*"). Requests will be matched against the Host field in the following way: 1. If Host is precise, the request matches this rule if the http host header is equal to Host. 2. If Host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule.
    abstract def host : String?
    # :ditto:
    abstract def host! : String
    # :ditto:
    abstract def host? : String?
    # :ditto:
    abstract def host=(value : String?)
    #
    abstract def http : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?
    # :ditto:
    abstract def http! : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue
    # :ditto:
    abstract def http? : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?
    # :ditto:
    abstract def http=(value : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?)
  end

  # IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
  @[::K8S::Properties(
    host: {key: "host", accessor: "host", kind: "String", nilable: true, default: nil, read_only: false, description: "Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the \"host\" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to\n   the IP in the Spec of the parent Ingress.\n2. The `:` delimiter is not respected because ports are not allowed.\n\t  Currently the port of an Ingress is implicitly :80 for http and\n\t  :443 for https.\nBoth these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.\n\nHost can be \"precise\" which is a domain name without the terminating dot of a network host (e.g. \"foo.bar.com\") or \"wildcard\", which is a domain name prefixed with a single wildcard label (e.g. \"*.foo.com\"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == \"*\"). Requests will be matched against the Host field in the following way: 1. If Host is precise, the request matches this rule if the http host header is equal to Host. 2. If Host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule."},
    http: {key: "http", accessor: "http", kind: "::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue", nilable: true, default: nil, read_only: false, description: nil},
  )]
  class Api::Extensions::V1beta1::IngressRule < ::K8S::Types::Api::Extensions::V1beta1::IngressRule::Instance
    include ::K8S::Types::Api::Extensions::V1beta1::IngressRule
    include ::K8S::Kubernetes::Object

    # Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to
    #    the IP in the Spec of the parent Ingress.
    # 2. The `:` delimiter is not respected because ports are not allowed.
    # 	  Currently the port of an Ingress is implicitly :80 for http and
    # 	  :443 for https.
    # Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
    #
    # Host can be "precise" which is a domain name without the terminating dot of a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*"). Requests will be matched against the Host field in the following way: 1. If Host is precise, the request matches this rule if the http host header is equal to Host. 2. If Host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule.
    def host : String?
      self.["host"].as(String?)
    end

    # :ditto:
    def host! : String
      self.["host"].as(String?).not_nil!
    end

    # :ditto:
    def host? : String?
      self.["host"]?.as(String?)
    end

    # :ditto:
    def host=(value : String?)
      self.["host"] = value
    end

    #
    def http : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?
      self.["http"].as(::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?)
    end

    # :ditto:
    def http! : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue
      self.["http"].as(::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?).not_nil!
    end

    # :ditto:
    def http? : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?
      self.["http"]?.as(::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?)
    end

    # :ditto:
    def http=(value : ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue?)
      self.["http"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "host", accessor: "host", nilable: true, read_only: false, default: nil, kind: String },
        { key: "http", accessor: "http", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue },
      ])
end
  end
end
