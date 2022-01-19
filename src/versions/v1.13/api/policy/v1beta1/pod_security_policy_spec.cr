# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::PodSecurityPolicySpec; end

require "./allowed_flex_volume"
require "./allowed_host_path"
require "./fs_group_strategy_options"
require "./host_port_range"
require "./run_as_group_strategy_options"
require "./run_as_user_strategy_options"
require "./se_linux_strategy_options"
require "./supplemental_groups_strategy_options"

module K8S
  alias Api::Policy::V1beta1::PodSecurityPolicySpec = Api::Extensions::V1beta1::PodSecurityPolicySpec
end
