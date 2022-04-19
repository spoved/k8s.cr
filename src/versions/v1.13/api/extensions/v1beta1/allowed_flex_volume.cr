# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AllowedFlexVolume",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "driver", kind: String, key: "driver", nilable: false, read_only: false, description: "driver is the name of the Flexvolume driver."},

  ]
)
