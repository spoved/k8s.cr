# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AzureFilePersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "secret_name", kind: String, key: "secretName", nilable: false, read_only: false, description: "secretName is the name of secret that contains Azure Storage Account Name and Key"},
    {name: "secret_namespace", kind: String, key: "secretNamespace", nilable: true, read_only: false, description: "secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod"},
    {name: "share_name", kind: String, key: "shareName", nilable: false, read_only: false, description: "shareName is the azure Share Name"},

  ]
)
