# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceColumnDefinition",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "description", kind: String, key: "description", nilable: true, read_only: false, description: "description is a human readable description of this column."},
    {name: "format", kind: String, key: "format", nilable: true, read_only: false, description: "format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)"},
    {name: "json_path", kind: String, key: "jsonPath", nilable: false, read_only: false, description: "jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is a human readable name for the column."},
    {name: "priority", kind: Int32, key: "priority", nilable: true, read_only: false, description: "priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type is an OpenAPI type definition for this column. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)"},

  ]
)
