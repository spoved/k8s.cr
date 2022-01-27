# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::RunAsGroupStrategyOptions; end

require "./id_range"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::RunAsGroupStrategyOptions`.
  module Types::Api::Extensions::V1beta1::RunAsGroupStrategyOptions
    # ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
    abstract def ranges : ::Array(::K8S::Api::Extensions::V1beta1::IDRange)?
    # :ditto:
    abstract def ranges! : ::Array(::K8S::Api::Extensions::V1beta1::IDRange)
    # :ditto:
    abstract def ranges? : ::Array(::K8S::Api::Extensions::V1beta1::IDRange)?
    # :ditto:
    abstract def ranges=(value : ::Array(::K8S::Api::Extensions::V1beta1::IDRange))
    # rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
    abstract def rule : String?
    # :ditto:
    abstract def rule! : String
    # :ditto:
    abstract def rule? : String?
    # :ditto:
    abstract def rule=(value : String)
  end

  # RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsGroupStrategyOptions from policy API Group instead.
  @[::K8S::Properties(
    ranges: {key: "ranges", accessor: "ranges", kind: "::Array(::K8S::Api::Extensions::V1beta1::IDRange)", nilable: true, default: nil, read_only: false, description: "ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rule: {key: "rule", accessor: "rule", kind: "String", nilable: false, default: nil, read_only: false, description: "rule is the strategy that will dictate the allowable RunAsGroup values that may be set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::RunAsGroupStrategyOptions < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::RunAsGroupStrategyOptions
    k8s_object_accessor("ranges", ranges : ::Array(::K8S::Api::Extensions::V1beta1::IDRange), true, false, "ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.")
    k8s_object_accessor("rule", rule : String, false, false, "rule is the strategy that will dictate the allowable RunAsGroup values that may be set.")

    def initialize(*, ranges : ::Array(::K8S::Api::Extensions::V1beta1::IDRange)? = nil, rule : String? = nil)
      super()
      self.["ranges"] = ranges
      self.["rule"] = rule
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "ranges", accessor: "ranges", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::IDRange)},
      {key: "rule", accessor: "rule", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
