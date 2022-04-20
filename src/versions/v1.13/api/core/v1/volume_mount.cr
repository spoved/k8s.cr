# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VolumeMount",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "mount_path", kind: String, key: "mountPath", nilable: false, read_only: false, description: "Path within the container at which the volume should be mounted.  Must not contain ':'."},
    {name: "mount_propagation", kind: String, key: "mountPropagation", nilable: true, read_only: false, description: "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "This must match the Name of a Volume."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."},
    {name: "sub_path", kind: String, key: "subPath", nilable: true, read_only: false, description: "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."},

  ]
)
