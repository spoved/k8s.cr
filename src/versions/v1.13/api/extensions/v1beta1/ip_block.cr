# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IPBlock",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "cidr", kind: String, key: "cidr", nilable: false, read_only: false, description: "CIDR is a string representing the IP Block Valid examples are [\"192.168.1.1/24\"](\"192.168.1.1/24\")"},
    {name: "except", kind: ::Array(String), key: "except", nilable: true, read_only: false, description: "Except is a slice of CIDRs that should not be included within an IP Block Valid examples are [\"192.168.1.1/24\" Except values will be rejected if they are outside the CIDR range](\"192.168.1.1/24\" Except values will be rejected if they are outside the CIDR range)"},

  ]
)
