# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference`.
  module Types::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `name` is the name of the priority level configuration being referenced Required.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "`name` is the name of the priority level configuration being referenced Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference < ::K8S::Types::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference::Instance
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    include ::K8S::Kubernetes::Object

    # `name` is the name of the priority level configuration being referenced Required.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
