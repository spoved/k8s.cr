# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ConfigMap",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "binary_data", kind: ::Hash(String, String), key: "binaryData", nilable: true, read_only: false, description: "BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet."},
    {name: "data", kind: ::Hash(String, String), key: "data", nilable: true, read_only: false, description: "Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process."},
    {name: "immutable", kind: ::Bool, key: "immutable", nilable: true, read_only: false, description: "Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. This is a beta field enabled by ImmutableEphemeralVolumes feature gate."},

  ],
  description: "ConfigMap holds configuration data for pods to consume.",
)
