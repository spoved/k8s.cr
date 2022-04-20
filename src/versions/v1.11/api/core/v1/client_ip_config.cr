# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ClientIPConfig",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "timeout_seconds", kind: Int32, key: "timeoutSeconds", nilable: true, read_only: false, description: "timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours)."},

  ]
)
