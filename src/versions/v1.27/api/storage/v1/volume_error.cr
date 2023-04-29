# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VolumeError",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "message represents the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information."},
    {name: "time", kind: ::Time, key: "time", nilable: true, read_only: false, description: "time represents the time the error was encountered."},

  ]
)
