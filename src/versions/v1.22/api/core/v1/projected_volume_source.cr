# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./volume_projection"

::K8S::Kubernetes::Resource.define_object("ProjectedVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "default_mode", kind: Int32, key: "defaultMode", nilable: true, read_only: false, description: "Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    {name: "sources", kind: ::Array(::K8S::Api::Core::V1::VolumeProjection), key: "sources", nilable: true, read_only: false, description: "list of volume projections"},

  ]
)
