# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("KeyToPath",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "key is the key to project."},
    {name: "mode", kind: Int32, key: "mode", nilable: true, read_only: false, description: "mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."},
    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'."},

  ]
)
