# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("FlockerVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "dataset_name", kind: String, key: "datasetName", nilable: true, read_only: false, description: "Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"},
    {name: "dataset_uuid", kind: String, key: "datasetUUID", nilable: true, read_only: false, description: "UUID of the dataset. This is unique identifier of a Flocker dataset"},

  ]
)
