# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SelfSubjectRulesReviewSpec`.
  module Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec
    # Namespace to evaluate rules for. Required.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
  end

  # SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
  @[::K8S::Properties(
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace to evaluate rules for. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::SelfSubjectRulesReviewSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec

    # Namespace to evaluate rules for. Required.
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
