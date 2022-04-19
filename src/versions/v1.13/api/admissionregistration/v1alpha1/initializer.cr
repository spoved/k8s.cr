# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rule"

::K8S::Kubernetes::Resource.define_object("Initializer",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where \"alwayspullimages\" is the name of the webhook, and kubernetes.io is the name of the organization. Required"},
    {name: "rules", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::Rule), key: "rules", nilable: true, read_only: false, description: "Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)"},

  ]
)
