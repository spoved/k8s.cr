# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::DeploymentSpec; end

require "./rollback_config"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./deployment_strategy"
require "../../core/v1/pod_template_spec"

module K8S
  alias Api::Extensions::V1beta1::DeploymentSpec = Api::Apps::V1beta1::DeploymentSpec
end
