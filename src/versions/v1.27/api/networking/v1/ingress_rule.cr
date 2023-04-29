# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./http_ingress_rule_value"

::K8S::Kubernetes::Resource.define_object("IngressRule",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "host", kind: String, key: "host", nilable: true, read_only: false, description: "host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the \"host\" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to\n   the IP in the Spec of the parent Ingress.\n2. The `:` delimiter is not respected because ports are not allowed.\n\t  Currently the port of an Ingress is implicitly :80 for http and\n\t  :443 for https.\nBoth these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.\n\nhost can be \"precise\" which is a domain name without the terminating dot of a network host (e.g. \"foo.bar.com\") or \"wildcard\", which is a domain name prefixed with a single wildcard label (e.g. \"*.foo.com\"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == \"*\"). Requests will be matched against the Host field in the following way: 1. If host is precise, the request matches this rule if the http host header is equal to Host. 2. If host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule."},
    {name: "http", kind: ::K8S::Api::Networking::V1::HTTPIngressRuleValue, key: "http", nilable: true, read_only: false, description: nil},

  ]
)
