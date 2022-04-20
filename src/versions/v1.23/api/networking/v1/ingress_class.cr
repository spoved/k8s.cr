# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./ingress_class_spec"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "IngressClass",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1::IngressClassSpec, key: "spec", nilable: true, read_only: false, description: "Spec is the desired state of the IngressClass. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "IngressClass represents the class of the Ingress, referenced by the Ingress Spec. The `ingressclass.kubernetes.io/is-default-class` annotation can be used to indicate that an IngressClass should be considered default. When a single IngressClass resource has this annotation set to true, new Ingress resources without a class specified will be assigned this default class.",
)
