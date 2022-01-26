# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::RunAsUserStrategyOptions; end

require "./id_range"

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::RunAsUserStrategyOptions`.
  module Types::Api::Policy::V1beta1::RunAsUserStrategyOptions
    # ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
    abstract def ranges : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?
    # :ditto:
    abstract def ranges! : ::Array(::K8S::Api::Policy::V1beta1::IDRange)
    # :ditto:
    abstract def ranges? : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?
    # :ditto:
    abstract def ranges=(value : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?)
    # rule is the strategy that will dictate the allowable RunAsUser values that may be set.
    abstract def rule : String
    # :ditto:
    abstract def rule! : String
    # :ditto:
    abstract def rule? : String?
    # :ditto:
    abstract def rule=(value : String)
  end

  # RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy.
  @[::K8S::Properties(
    ranges: {key: "ranges", accessor: "ranges", kind: "::Array(::K8S::Api::Policy::V1beta1::IDRange)", nilable: true, default: nil, read_only: false, description: "ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rule: {key: "rule", accessor: "rule", kind: "String", nilable: false, default: nil, read_only: false, description: "rule is the strategy that will dictate the allowable RunAsUser values that may be set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::RunAsUserStrategyOptions < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::RunAsUserStrategyOptions

    # ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
    def ranges : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?
      self.["ranges"].as(::Array(::K8S::Api::Policy::V1beta1::IDRange)?)
    end

    # :ditto:
    def ranges! : ::Array(::K8S::Api::Policy::V1beta1::IDRange)
      self.["ranges"].as(::Array(::K8S::Api::Policy::V1beta1::IDRange)?).not_nil!
    end

    # :ditto:
    def ranges? : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?
      self.["ranges"]?.as(::Array(::K8S::Api::Policy::V1beta1::IDRange)?)
    end

    # :ditto:
    def ranges=(value : ::Array(::K8S::Api::Policy::V1beta1::IDRange)?)
      self.["ranges"] = value
    end

    # rule is the strategy that will dictate the allowable RunAsUser values that may be set.
    def rule : String
      self.["rule"].as(String)
    end

    # :ditto:
    def rule! : String
      self.["rule"].as(String).not_nil!
    end

    # :ditto:
    def rule? : String?
      self.["rule"]?.as(String?)
    end

    # :ditto:
    def rule=(value : String)
      self.["rule"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ranges", accessor: "ranges", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Policy::V1beta1::IDRange) },
        { key: "rule", accessor: "rule", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
