# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Apps::V1beta2::StatefulSetSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"
require "./stateful_set_update_strategy"
require "../../core/v1/persistent_volume_claim"

module K8S
  alias Api::Apps::V1beta2::StatefulSetSpec = Api::Apps::V1::StatefulSetSpec
end
