# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Variable",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "expression", kind: String, key: "expression", nilable: false, read_only: false, description: "Expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is \"foo\", the variable will be available as `variables.foo`"},

  ]
)
