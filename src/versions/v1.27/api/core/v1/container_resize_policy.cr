# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerResizePolicy",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "resource_name", kind: String, key: "resourceName", nilable: false, read_only: false, description: "Name of the resource to which this resource resize policy applies. Supported values: cpu, memory."},
    {name: "restart_policy", kind: String, key: "restartPolicy", nilable: false, read_only: false, description: "Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired."},

  ]
)
