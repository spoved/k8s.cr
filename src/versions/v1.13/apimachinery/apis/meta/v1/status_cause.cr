# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("StatusCause",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "field", kind: String, key: "field", nilable: true, read_only: false, description: "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\""},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "A human-readable description of the cause of the error.  This field may be presented as-is to a reader."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "A machine-readable description of the cause of the error. If this value is empty there is no information available."},

  ]
)
