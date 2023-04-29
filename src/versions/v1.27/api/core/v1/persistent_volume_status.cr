# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "message is a human-readable message indicating details about why the volume is in this state."},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI."},

  ]
)
