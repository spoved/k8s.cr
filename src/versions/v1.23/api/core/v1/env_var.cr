# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EnvVar; end

require "./env_var_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::EnvVar`.
  module Types::Api::Core::V1::EnvVar
    # Name of the environment variable. Must be a C_IDENTIFIER.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
    abstract def value : String?
    # :ditto:
    abstract def value! : String
    # :ditto:
    abstract def value? : String?
    # :ditto:
    abstract def value=(value : String?)
    # Source for the environment variable's value. Cannot be used if value is not empty.
    abstract def value_from : ::K8S::Api::Core::V1::EnvVarSource?
    # :ditto:
    abstract def value_from! : ::K8S::Api::Core::V1::EnvVarSource
    # :ditto:
    abstract def value_from? : ::K8S::Api::Core::V1::EnvVarSource?
    # :ditto:
    abstract def value_from=(value : ::K8S::Api::Core::V1::EnvVarSource?)
  end

  # EnvVar represents an environment variable present in a Container.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the environment variable. Must be a C_IDENTIFIER.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value_from: {key: "valueFrom", accessor: "value_from", kind: "::K8S::Api::Core::V1::EnvVarSource", nilable: true, default: nil, read_only: false, description: "Source for the environment variable's value. Cannot be used if value is not empty.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EnvVar < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EnvVar

    # Name of the environment variable. Must be a C_IDENTIFIER.
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

    # Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
    def value : String?
      self.["value"].as(String?)
    end

    # :ditto:
    def value! : String
      self.["value"].as(String?).not_nil!
    end

    # :ditto:
    def value? : String?
      self.["value"]?.as(String?)
    end

    # :ditto:
    def value=(value : String?)
      self.["value"] = value
    end

    # Source for the environment variable's value. Cannot be used if value is not empty.
    def value_from : ::K8S::Api::Core::V1::EnvVarSource?
      self.["valueFrom"].as(::K8S::Api::Core::V1::EnvVarSource?)
    end

    # :ditto:
    def value_from! : ::K8S::Api::Core::V1::EnvVarSource
      self.["valueFrom"].as(::K8S::Api::Core::V1::EnvVarSource?).not_nil!
    end

    # :ditto:
    def value_from? : ::K8S::Api::Core::V1::EnvVarSource?
      self.["valueFrom"]?.as(::K8S::Api::Core::V1::EnvVarSource?)
    end

    # :ditto:
    def value_from=(value : ::K8S::Api::Core::V1::EnvVarSource?)
      self.["valueFrom"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String },
        { key: "valueFrom", accessor: "value_from", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EnvVarSource },
      ])
end
  end
end
