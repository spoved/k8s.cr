# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./key_to_path"

::K8S::Kubernetes::Resource.define_object("ConfigMapProjection",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "items", kind: ::Array(::K8S::Api::Core::V1::KeyToPath), key: "items", nilable: true, read_only: false, description: "If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    {name: "optional", kind: ::Bool, key: "optional", nilable: true, read_only: false, description: "Specify whether the ConfigMap or its keys must be defined"},

  ]
)
