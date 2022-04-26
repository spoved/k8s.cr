# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Secret",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "data", kind: ::Hash(String, String), key: "data", nilable: true, read_only: false, description: "Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in [https://tools.ietf.org/html/rfc4648#section-4](https://tools.ietf.org/html/rfc4648#section-4)"},
    {name: "string_data", kind: ::Hash(String, String), key: "stringData", nilable: true, read_only: false, description: "stringData allows specifying non-binary secret data in string form. It is provided as a write-only convenience method. All keys and values are merged into the data field on write, overwriting any existing values. It is never output when reading from the API."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Used to facilitate programmatic handling of secret data."},

  ],
  description: "Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.",
  versions: [{group: "", kind: "Secret", version: "v1"}],
)
