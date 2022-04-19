# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./pod_dns_config_option"

::K8S::Kubernetes::Resource.define_object("PodDNSConfig",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "nameservers", kind: ::Array(String), key: "nameservers", nilable: true, read_only: false, description: "A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed."},
    {name: "options", kind: ::Array(::K8S::Api::Core::V1::PodDNSConfigOption), key: "options", nilable: true, read_only: false, description: "A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."},
    {name: "searches", kind: ::Array(String), key: "searches", nilable: true, read_only: false, description: "A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed."},

  ]
)
