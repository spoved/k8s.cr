# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./object_field_selector"
require "./resource_field_selector"

::K8S::Kubernetes::Resource.define_object("DownwardAPIVolumeFile",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "field_ref", kind: ::K8S::Api::Core::V1::ObjectFieldSelector, key: "fieldRef", nilable: true, read_only: false, description: "Required: Selects a field of the pod: only annotations, labels, name and namespace are supported."},
    {name: "mode", kind: Int32, key: "mode", nilable: true, read_only: false, description: "Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'"},
    {name: "resource_field_ref", kind: ::K8S::Api::Core::V1::ResourceFieldSelector, key: "resourceFieldRef", nilable: true, read_only: false, description: "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."},

  ]
)
