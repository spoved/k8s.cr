# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AttachedVolume",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "device_path", kind: String, key: "devicePath", nilable: false, read_only: false, description: "DevicePath represents the device path where the volume should be available"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of the attached volume"},

  ]
)
