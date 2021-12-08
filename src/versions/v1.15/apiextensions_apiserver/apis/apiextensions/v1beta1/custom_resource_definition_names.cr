# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
  @[::K8S::Properties(
    categories: {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    list_kind: {type: String, nilable: true, key: "listKind", getter: false, setter: false},
    plural: {type: String, nilable: false, key: "plural", getter: false, setter: false},
    short_names: {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
    singular: {type: String, nilable: true, key: "singular", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Categories is a list of grouped resources custom resources belong to (e.g. 'all')
    @[::JSON::Field(key: "categories", emit_null: false)]
    @[::YAML::Field(key: "categories", emit_null: false)]
    property categories : Array(String) | Nil

    # Kind is the serialized kind of the resource.  It is normally CamelCase and singular.
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    # ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.
    @[::JSON::Field(key: "listKind", emit_null: false)]
    @[::YAML::Field(key: "listKind", emit_null: false)]
    property list_kind : String | Nil

    # Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase.
    @[::JSON::Field(key: "plural", emit_null: true)]
    @[::YAML::Field(key: "plural", emit_null: true)]
    property plural : String

    # ShortNames are short names for the resource.  It must be all lowercase.
    @[::JSON::Field(key: "shortNames", emit_null: false)]
    @[::YAML::Field(key: "shortNames", emit_null: false)]
    property short_names : Array(String) | Nil

    # Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>
    @[::JSON::Field(key: "singular", emit_null: false)]
    @[::YAML::Field(key: "singular", emit_null: false)]
    property singular : String | Nil

    def initialize(*, @kind : String, @plural : String, @categories : Array | Nil = nil, @list_kind : String | Nil = nil, @short_names : Array | Nil = nil, @singular : String | Nil = nil)
    end
  end
end
