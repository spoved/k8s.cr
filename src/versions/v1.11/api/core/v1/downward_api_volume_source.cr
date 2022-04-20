# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./downward_api_volume_file"

::K8S::Kubernetes::Resource.define_object("DownwardAPIVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "default_mode", kind: Int32, key: "defaultMode", nilable: true, read_only: false, description: "Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    {name: "items", kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile), key: "items", nilable: true, read_only: false, description: "Items is a list of downward API volume file"},

  ]
)
