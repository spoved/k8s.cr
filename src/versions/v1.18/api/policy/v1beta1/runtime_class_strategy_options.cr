# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RuntimeClassStrategyOptions",
  namespace: "::K8S::Api::Policy::V1beta1",
  properties: [

    {name: "allowed_runtime_class_names", kind: ::Array(String), key: "allowedRuntimeClassNames", nilable: false, read_only: false, description: "allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of \"*\" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset."},
    {name: "default_runtime_class_name", kind: String, key: "defaultRuntimeClassName", nilable: true, read_only: false, description: "defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod."},

  ]
)
