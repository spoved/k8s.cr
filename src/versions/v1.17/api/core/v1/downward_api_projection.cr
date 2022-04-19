# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./downward_api_volume_file"

::K8S::Kubernetes::Resource.define_object("DownwardAPIProjection",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "items", kind: ::Array(::K8S::Api::Core::V1::DownwardAPIVolumeFile), key: "items", nilable: true, read_only: false, description: "Items is a list of DownwardAPIVolume file"},

  ]
)
