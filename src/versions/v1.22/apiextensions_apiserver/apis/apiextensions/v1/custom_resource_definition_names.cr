# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionNames",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "categories", kind: ::Array(String), key: "categories", nilable: true, read_only: false, description: "categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls."},
    {name: "list_kind", kind: String, key: "listKind", nilable: true, read_only: false, description: "listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\"."},
    {name: "plural", kind: String, key: "plural", nilable: false, read_only: false, description: "plural is the plural name of the resource to serve. The custom resources are served under [`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)"},
    {name: "short_names", kind: ::Array(String), key: "shortNames", nilable: true, read_only: false, description: "shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase."},
    {name: "singular", kind: String, key: "singular", nilable: true, read_only: false, description: "singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`."},

  ]
)
