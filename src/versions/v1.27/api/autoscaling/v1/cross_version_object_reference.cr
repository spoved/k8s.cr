# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CrossVersionObjectReference",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "apiVersion is the API version of the referent"},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "kind is the kind of the referent; More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the referent; More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},

  ]
)
