# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EnvVar; end

require "./env_var_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::EnvVar`.
  module Types::Api::Core::V1::EnvVar
    # Name of the environment variable. Must be a C_IDENTIFIER.
    abstract def name : String?
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
    abstract def value=(value : String)
    # Source for the environment variable's value. Cannot be used if value is not empty.
    abstract def value_from : ::K8S::Api::Core::V1::EnvVarSource?
    # :ditto:
    abstract def value_from! : ::K8S::Api::Core::V1::EnvVarSource
    # :ditto:
    abstract def value_from? : ::K8S::Api::Core::V1::EnvVarSource?
    # :ditto:
    abstract def value_from=(value : ::K8S::Api::Core::V1::EnvVarSource)
  end

  # EnvVar represents an environment variable present in a Container.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the environment variable. Must be a C_IDENTIFIER.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value_from: {key: "valueFrom", accessor: "value_from", kind: "::K8S::Api::Core::V1::EnvVarSource", nilable: true, default: nil, read_only: false, description: "Source for the environment variable's value. Cannot be used if value is not empty.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EnvVar < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EnvVar
    k8s_object_accessor("name", name : String, false, false, "Name of the environment variable. Must be a C_IDENTIFIER.")
    k8s_object_accessor("value", value : String, true, false, "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".")
    k8s_object_accessor("valueFrom", value_from : ::K8S::Api::Core::V1::EnvVarSource, true, false, "Source for the environment variable's value. Cannot be used if value is not empty.")

    def initialize(*, name : String? = nil, value : String? = nil, value_from : ::K8S::Api::Core::V1::EnvVarSource? = nil)
      super()
      self.["name"] = name
      self.["value"] = value
      self.["valueFrom"] = value_from
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String},
      {key: "valueFrom", accessor: "value_from", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EnvVarSource},
    ])
  end
end
