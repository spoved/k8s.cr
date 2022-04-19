# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionNames",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "categories", kind: ::Array(String), key: "categories", nilable: true, read_only: false, description: "Categories is a list of grouped resources custom resources belong to (e.g. 'all')"},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind is the serialized kind of the resource.  It is normally CamelCase and singular."},
    {name: "list_kind", kind: String, key: "listKind", nilable: true, read_only: false, description: "ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List."},
    {name: "plural", kind: String, key: "plural", nilable: false, read_only: false, description: "Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase."},
    {name: "short_names", kind: ::Array(String), key: "shortNames", nilable: true, read_only: false, description: "ShortNames are short names for the resource.  It must be all lowercase."},
    {name: "singular", kind: String, key: "singular", nilable: true, read_only: false, description: "Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>"},

  ]
)
