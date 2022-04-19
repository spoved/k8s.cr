# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/se_linux_options"

::K8S::Kubernetes::Resource.define_object("SELinuxStrategyOptions",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "rule", kind: String, key: "rule", nilable: false, read_only: false, description: "rule is the strategy that will dictate the allowable labels that may be set."},
    {name: "se_linux_options", kind: ::K8S::Api::Core::V1::SELinuxOptions, key: "seLinuxOptions", nilable: true, read_only: false, description: "seLinuxOptions required to run as; required for MustRunAs More info: [https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)"},

  ]
)
