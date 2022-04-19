# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("QuobyteVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "group", kind: String, key: "group", nilable: true, read_only: false, description: "Group to map volume access to Default is no group"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."},
    {name: "registry", kind: String, key: "registry", nilable: false, read_only: false, description: "Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes"},
    {name: "tenant", kind: String, key: "tenant", nilable: true, read_only: false, description: "Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "User to map volume access to Defaults to serivceaccount user"},
    {name: "volume", kind: String, key: "volume", nilable: false, read_only: false, description: "Volume is a string that references an already created Quobyte volume by name."},

  ]
)
