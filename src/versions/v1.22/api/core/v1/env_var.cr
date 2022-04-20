# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./env_var_source"

::K8S::Kubernetes::Resource.define_object("EnvVar",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of the environment variable. Must be a C_IDENTIFIER."},
    {name: "value", kind: String, key: "value", nilable: true, read_only: false, description: "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."},
    {name: "value_from", kind: ::K8S::Api::Core::V1::EnvVarSource, key: "valueFrom", nilable: true, read_only: false, description: "Source for the environment variable's value. Cannot be used if value is not empty."},

  ]
)
