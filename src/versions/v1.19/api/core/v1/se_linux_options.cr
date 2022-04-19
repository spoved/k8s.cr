# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("SELinuxOptions",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "level", kind: String, key: "level", nilable: true, read_only: false, description: "Level is SELinux level label that applies to the container."},
    {name: "role", kind: String, key: "role", nilable: true, read_only: false, description: "Role is a SELinux role label that applies to the container."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type is a SELinux type label that applies to the container."},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "User is a SELinux user label that applies to the container."},

  ]
)
