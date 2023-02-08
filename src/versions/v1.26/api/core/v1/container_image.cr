# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerImage",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "names", kind: ::Array(String), key: "names", nilable: true, read_only: false, description: "Names by which this image is known. e.g. [[\"kubernetes.example/hyperkube:v1.0.7\", \"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7\"]]([\"kubernetes.example/hyperkube:v1.0.7\", \"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7\"])"},
    {name: "size_bytes", kind: Int32, key: "sizeBytes", nilable: true, read_only: false, description: "The size of the image in bytes."},

  ]
)
