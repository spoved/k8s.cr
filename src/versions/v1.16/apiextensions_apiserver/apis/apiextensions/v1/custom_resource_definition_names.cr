# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    include ::JSON::Serializable
    include ::YAML::Serializable

    # categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
    property categories : Array(String) | Nil

    # kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
    property kind : String

    # listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
    property list_kind : String | Nil

    # plural is the plural name of the resource to serve. The custom resources are served under [`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)
    property plural : String

    # shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
    property short_names : Array(String) | Nil

    # singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
    property singular : String | Nil

    ::YAML.mapping({
      categories:  {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      kind:        {type: String, nilable: false, key: "kind", getter: false, setter: false},
      list_kind:   {type: String, nilable: true, key: "listKind", getter: false, setter: false},
      plural:      {type: String, nilable: false, key: "plural", getter: false, setter: false},
      short_names: {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular:    {type: String, nilable: true, key: "singular", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      categories:  {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
      kind:        {type: String, nilable: false, key: "kind", getter: false, setter: false},
      list_kind:   {type: String, nilable: true, key: "listKind", getter: false, setter: false},
      plural:      {type: String, nilable: false, key: "plural", getter: false, setter: false},
      short_names: {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
      singular:    {type: String, nilable: true, key: "singular", getter: false, setter: false},
    }, true)

    def initialize(*, @kind : String, @plural : String, @categories : Array | Nil = nil, @list_kind : String | Nil = nil, @short_names : Array | Nil = nil, @singular : String | Nil = nil)
    end
  end
end
