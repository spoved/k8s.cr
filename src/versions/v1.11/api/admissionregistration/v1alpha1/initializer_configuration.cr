# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./initializer"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "InitializerConfiguration",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "initializers", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::Initializer), key: "initializers", nilable: true, read_only: false, description: "Initializers is a list of resources and their default initializers Order-sensitive. When merging multiple InitializerConfigurations, we sort the initializers from different InitializerConfigurations by the name of the InitializerConfigurations; the order of the initializers from the same InitializerConfiguration is preserved."},

  ],
  description: "InitializerConfiguration describes the configuration of initializers.",
  versions: [{group: "admissionregistration.k8s.io", kind: "InitializerConfiguration", version: "v1alpha1"}],
)
