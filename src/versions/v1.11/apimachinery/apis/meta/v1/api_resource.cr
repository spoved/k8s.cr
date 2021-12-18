# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIResource specifies the name of a resource and whether it is namespaced.
  @[::K8S::Properties(
    categories: {type: Array(String), nilable: true, key: "categories", getter: false, setter: false},
    group: {type: String, nilable: true, key: "group", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespaced: {type: Bool, nilable: false, key: "namespaced", getter: false, setter: false},
    short_names: {type: Array(String), nilable: true, key: "shortNames", getter: false, setter: false},
    singular_name: {type: String, nilable: false, key: "singularName", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
    version: {type: String, nilable: true, key: "version", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::APIResource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    @[::JSON::Field(key: "categories", emit_null: false)]
    @[::YAML::Field(key: "categories", emit_null: false)]
    property categories : Array(String) | Nil

    # group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : String | Nil

    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    # name is the plural name of the resource.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # namespaced indicates if a resource is namespaced or not.
    @[::JSON::Field(key: "namespaced", emit_null: true)]
    @[::YAML::Field(key: "namespaced", emit_null: true)]
    property namespaced : Bool

    # shortNames is a list of suggested short names of the resource.
    @[::JSON::Field(key: "shortNames", emit_null: false)]
    @[::YAML::Field(key: "shortNames", emit_null: false)]
    property short_names : Array(String) | Nil

    # singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    @[::JSON::Field(key: "singularName", emit_null: true)]
    @[::YAML::Field(key: "singularName", emit_null: true)]
    property singular_name : String

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    # version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
    @[::JSON::Field(key: "version", emit_null: false)]
    @[::YAML::Field(key: "version", emit_null: false)]
    property version : String | Nil

    def initialize(*, @kind : String, @name : String, @namespaced : Bool, @singular_name : String, @verbs : Array(String), @categories : Array(String) | Nil = nil, @group : String | Nil = nil, @short_names : Array(String) | Nil = nil, @version : String | Nil = nil)
    end
  end
end
