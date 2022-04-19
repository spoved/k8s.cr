# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./key_to_path"

::K8S::Kubernetes::Resource.define_object("ConfigMapVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "default_mode", kind: Int32, key: "defaultMode", nilable: true, read_only: false, description: "Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    {name: "items", kind: ::Array(::K8S::Api::Core::V1::KeyToPath), key: "items", nilable: true, read_only: false, description: "If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    {name: "optional", kind: ::Bool, key: "optional", nilable: true, read_only: false, description: "Specify whether the ConfigMap or its keys must be defined"},

  ]
)
