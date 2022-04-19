# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./json_schema_props"

::K8S::Kubernetes::Resource.define_object("CustomResourceValidation",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "open_apiv3_schema", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps, key: "openAPIV3Schema", nilable: true, read_only: false, description: "OpenAPIV3Schema is the OpenAPI v3 schema to be validated against."},

  ]
)
