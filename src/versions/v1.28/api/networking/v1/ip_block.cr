# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IPBlock",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "cidr", kind: String, key: "cidr", nilable: false, read_only: false, description: "cidr is a string representing the IPBlock Valid examples are [\"192.168.1.0/24\" or \"2001:db8::/64\"](\"192.168.1.0/24\" or \"2001:db8::/64\")"},
    {name: "except", kind: ::Array(String), key: "except", nilable: true, read_only: false, description: "except is a slice of CIDRs that should not be included within an IPBlock Valid examples are [\"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the cidr range](\"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the cidr range)"},

  ]
)
