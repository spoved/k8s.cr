# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ComponentCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ComponentCondition`.
  module Types::Api::Core::V1::ComponentCondition
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Condition error code for a component. For example, a health check error code.
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String?)
    # Message about the condition for a component. For example, information about a health check.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
    abstract def status : String
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # Type of condition for a component. Valid value: "Healthy"
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Information about the condition of a component.
  @[::K8S::Properties(
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Condition error code for a component. For example, a health check error code.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Message about the condition for a component. For example, information about a health check.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type of condition for a component. Valid value: \"Healthy\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ComponentCondition < ::K8S::Types::Api::Core::V1::ComponentCondition::Instance
    include ::K8S::Types::Api::Core::V1::ComponentCondition
    include ::K8S::Kubernetes::Object

    # Condition error code for a component. For example, a health check error code.
    def error : String?
      self.["error"].as(String?)
    end

    # :ditto:
    def error! : String
      self.["error"].as(String?).not_nil!
    end

    # :ditto:
    def error? : String?
      self.["error"]?.as(String?)
    end

    # :ditto:
    def error=(value : String?)
      self.["error"] = value
    end

    # Message about the condition for a component. For example, information about a health check.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
    def status : String
      self.["status"].as(String)
    end

    # :ditto:
    def status! : String
      self.["status"].as(String).not_nil!
    end

    # :ditto:
    def status? : String?
      self.["status"]?.as(String?)
    end

    # :ditto:
    def status=(value : String)
      self.["status"] = value
    end

    # Type of condition for a component. Valid value: "Healthy"
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
