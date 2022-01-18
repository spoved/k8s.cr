# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Autoscaling::V2beta2::MetricSpec; end

require "./container_resource_metric_source"
require "./external_metric_source"
require "./object_metric_source"
require "./pods_metric_source"
require "./resource_metric_source"

module K8S
  alias Api::Autoscaling::V2beta2::MetricSpec = Api::Autoscaling::V2beta1::MetricSpec
end
