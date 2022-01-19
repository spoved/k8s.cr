# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SelfSubjectRulesReviewSpec`.
  module Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Namespace to evaluate rules for. Required.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
  end

  #
  @[::K8S::Properties(
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace to evaluate rules for. Required."},
  )]
  class Api::Authorization::V1::SelfSubjectRulesReviewSpec < ::K8S::Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec::Instance
    include ::K8S::Types::Api::Authorization::V1::SelfSubjectRulesReviewSpec
    include ::K8S::Kubernetes::Object

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
