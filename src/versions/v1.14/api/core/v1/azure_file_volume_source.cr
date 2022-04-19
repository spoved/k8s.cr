# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AzureFileVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "secret_name", kind: String, key: "secretName", nilable: false, read_only: false, description: "the name of secret that contains Azure Storage Account Name and Key"},
    {name: "share_name", kind: String, key: "shareName", nilable: false, read_only: false, description: "Share Name"},

  ]
)
