# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SelfSubjectAccessReviewSpec; end

require "./non_resource_attributes"
require "./resource_attributes"

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SelfSubjectAccessReviewSpec`.
  module Types::Api::Authorization::V1::SelfSubjectAccessReviewSpec
    alias ValueType = ::K8S::Api::Authorization::V1::NonResourceAttributes | ::K8S::Api::Authorization::V1::ResourceAttributes | Nil
    alias Instance = ::K8S::Object(ValueType)

    # NonResourceAttributes describes information for a non-resource access request
    abstract def non_resource_attributes : ::K8S::Api::Authorization::V1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes! : ::K8S::Api::Authorization::V1::NonResourceAttributes
    # :ditto:
    abstract def non_resource_attributes? : ::K8S::Api::Authorization::V1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes=(value : ::K8S::Api::Authorization::V1::NonResourceAttributes?)
    # ResourceAuthorizationAttributes describes information for a resource access request
    abstract def resource_attributes : ::K8S::Api::Authorization::V1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes! : ::K8S::Api::Authorization::V1::ResourceAttributes
    # :ditto:
    abstract def resource_attributes? : ::K8S::Api::Authorization::V1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes=(value : ::K8S::Api::Authorization::V1::ResourceAttributes?)
  end

  # SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  @[::K8S::Properties(
    non_resource_attributes: {key: "nonResourceAttributes", accessor: "non_resource_attributes", kind: "::K8S::Api::Authorization::V1::NonResourceAttributes", nilable: true, default: nil, read_only: false, description: "NonResourceAttributes describes information for a non-resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_attributes: {key: "resourceAttributes", accessor: "resource_attributes", kind: "::K8S::Api::Authorization::V1::ResourceAttributes", nilable: true, default: nil, read_only: false, description: "ResourceAuthorizationAttributes describes information for a resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::SelfSubjectAccessReviewSpec < ::K8S::Types::Api::Authorization::V1::SelfSubjectAccessReviewSpec::Instance
    include ::K8S::Types::Api::Authorization::V1::SelfSubjectAccessReviewSpec
    include ::K8S::Kubernetes::Object

    # NonResourceAttributes describes information for a non-resource access request
    def non_resource_attributes : ::K8S::Api::Authorization::V1::NonResourceAttributes?
      self.["nonResourceAttributes"].as(::K8S::Api::Authorization::V1::NonResourceAttributes?)
    end

    # :ditto:
    def non_resource_attributes! : ::K8S::Api::Authorization::V1::NonResourceAttributes
      self.["nonResourceAttributes"].as(::K8S::Api::Authorization::V1::NonResourceAttributes?).not_nil!
    end

    # :ditto:
    def non_resource_attributes? : ::K8S::Api::Authorization::V1::NonResourceAttributes?
      self.["nonResourceAttributes"]?.as(::K8S::Api::Authorization::V1::NonResourceAttributes?)
    end

    # :ditto:
    def non_resource_attributes=(value : ::K8S::Api::Authorization::V1::NonResourceAttributes?)
      self.["nonResourceAttributes"] = value
    end

    # ResourceAuthorizationAttributes describes information for a resource access request
    def resource_attributes : ::K8S::Api::Authorization::V1::ResourceAttributes?
      self.["resourceAttributes"].as(::K8S::Api::Authorization::V1::ResourceAttributes?)
    end

    # :ditto:
    def resource_attributes! : ::K8S::Api::Authorization::V1::ResourceAttributes
      self.["resourceAttributes"].as(::K8S::Api::Authorization::V1::ResourceAttributes?).not_nil!
    end

    # :ditto:
    def resource_attributes? : ::K8S::Api::Authorization::V1::ResourceAttributes?
      self.["resourceAttributes"]?.as(::K8S::Api::Authorization::V1::ResourceAttributes?)
    end

    # :ditto:
    def resource_attributes=(value : ::K8S::Api::Authorization::V1::ResourceAttributes?)
      self.["resourceAttributes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nonResourceAttributes", accessor: "non_resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1::NonResourceAttributes },
        { key: "resourceAttributes", accessor: "resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1::ResourceAttributes },
      ])
end
  end
end
