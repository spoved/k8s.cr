# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ExpressionWarning",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "field_ref", kind: String, key: "fieldRef", nilable: false, read_only: false, description: "The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is \"spec.validations[0].expression\""},
    {name: "warning", kind: String, key: "warning", nilable: false, read_only: false, description: "The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler."},

  ]
)
