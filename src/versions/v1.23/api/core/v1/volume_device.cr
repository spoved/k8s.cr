# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VolumeDevice",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "device_path", kind: String, key: "devicePath", nilable: false, read_only: false, description: "devicePath is the path inside of the container that the device will be mapped to."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name must match the name of a persistentVolumeClaim in the pod"},

  ]
)
