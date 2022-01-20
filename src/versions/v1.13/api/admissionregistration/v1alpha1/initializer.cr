# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1alpha1::Initializer; end

require "./rule"

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1alpha1::Initializer`.
  module Types::Api::Admissionregistration::V1alpha1::Initializer
    alias ValueType = String | ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Rules describes what [[resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)]([resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.))
    abstract def rules : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?)
  end

  # Initializer describes the name and the failure policy of an initializer, and what resources it applies to.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where \"alwayspullimages\" is the name of the webhook, and kubernetes.io is the name of the organization. Required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)", nilable: true, default: nil, read_only: false, description: "Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Admissionregistration::V1alpha1::Initializer < ::K8S::Types::Api::Admissionregistration::V1alpha1::Initializer::Instance
    include ::K8S::Types::Api::Admissionregistration::V1alpha1::Initializer
    include ::K8S::Kubernetes::Object

    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Rules describes what [[resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)]([resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.))
    def rules : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?)
    end

    # :ditto:
    def rules! : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?).not_nil!
    end

    # :ditto:
    def rules? : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?
      self.["rules"]?.as(::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?)
    end

    # :ditto:
    def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule)?)
      self.["rules"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule) },
      ])
end
  end
end
