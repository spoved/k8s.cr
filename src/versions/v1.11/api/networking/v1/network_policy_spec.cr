# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Networking::V1::NetworkPolicySpec; end

require "./network_policy_egress_rule"
require "./network_policy_ingress_rule"
require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  alias Api::Networking::V1::NetworkPolicySpec = Api::Extensions::V1beta1::NetworkPolicySpec
end
