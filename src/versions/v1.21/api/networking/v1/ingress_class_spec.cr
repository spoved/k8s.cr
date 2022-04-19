# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_class_parameters_reference"

::K8S::Kubernetes::Resource.define_object("IngressClassSpec",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "controller", kind: String, key: "controller", nilable: true, read_only: false, description: "Controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. [\"acme.io/ingress-controller\". This field is immutable.](\"acme.io/ingress-controller\". This field is immutable.)"},
    {name: "parameters", kind: ::K8S::Api::Networking::V1::IngressClassParametersReference, key: "parameters", nilable: true, read_only: false, description: "Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters."},

  ]
)
