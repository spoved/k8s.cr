# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::MetricStatus; end

require "./container_resource_metric_status"
require "./external_metric_status"
require "./object_metric_status"
require "./pods_metric_status"
require "./resource_metric_status"

module K8S
  alias Api::Autoscaling::V2beta1::MetricStatus = Api::Autoscaling::V2::MetricStatus
end
