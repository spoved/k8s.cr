# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NonResourcePolicyRule",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "non_resource_urls", kind: ::Set(String), key: "nonResourceURLs", nilable: false, read_only: false, description: "`nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:\n  - [\"/healthz\" is legal](\"/healthz\" is legal)\n  - [\"/hea*\" is illegal](\"/hea*\" is illegal)\n  - [\"/hea\" is legal but matches nothing](\"/hea\" is legal but matches nothing)\n  - [\"/hea/*\" also matches nothing](\"/hea/*\" also matches nothing)\n  - [\"/healthz/*\" matches all per-component health checks.](\"/healthz/*\" matches all per-component health checks.)\n\"*\" matches all non-resource urls. if it is present, it must be the only entry. Required."},
    {name: "verbs", kind: ::Set(String), key: "verbs", nilable: false, read_only: false, description: "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required."},

  ]
)
