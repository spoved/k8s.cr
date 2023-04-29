# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/condition"
require "./type_checking"

::K8S::Kubernetes::Resource.define_object("ValidatingAdmissionPolicyStatus",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition), key: "conditions", nilable: true, read_only: false, description: "The conditions represent the latest available observations of a policy's current state."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "The generation observed by the controller."},
    {name: "type_checking", kind: ::K8S::Api::Admissionregistration::V1alpha1::TypeChecking, key: "typeChecking", nilable: true, read_only: false, description: "The results of type checking for each expression. Presence of this field indicates the completion of the type checking."},

  ]
)
