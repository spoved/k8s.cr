# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./expression_warning"

::K8S::Kubernetes::Resource.define_object("TypeChecking",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "expression_warnings", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::ExpressionWarning), key: "expressionWarnings", nilable: true, read_only: false, description: "The type checking warnings for each expression."},

  ]
)
