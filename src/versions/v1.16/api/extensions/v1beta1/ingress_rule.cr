# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./http_ingress_rule_value"

::K8S::Kubernetes::Resource.define_object("IngressRule",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "host", kind: String, key: "host", nilable: true, read_only: false, description: "Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the \"host\" part of the URI as defined in the RFC: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to the\n\t  IP in the Spec of the parent Ingress.\n2. The `:` delimiter is not respected because ports are not allowed.\n\t  Currently the port of an Ingress is implicitly :80 for http and\n\t  :443 for https.\nBoth these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue."},
    {name: "http", kind: ::K8S::Api::Extensions::V1beta1::HTTPIngressRuleValue, key: "http", nilable: true, read_only: false, description: nil},

  ]
)
