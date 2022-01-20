# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::APIResource; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::APIResource`.
  module Types::Apimachinery::Apis::Meta::V1::APIResource
    alias ValueType = ::Array(String) | String | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    abstract def categories : ::Array(String)?
    # :ditto:
    abstract def categories! : ::Array(String)
    # :ditto:
    abstract def categories? : ::Array(String)?
    # :ditto:
    abstract def categories=(value : ::Array(String)?)
    # group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String?)
    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # name is the plural name of the resource.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # namespaced indicates if a resource is namespaced or not.
    abstract def namespaced : ::Bool
    # :ditto:
    abstract def namespaced! : ::Bool
    # :ditto:
    abstract def namespaced? : ::Bool?
    # :ditto:
    abstract def namespaced=(value : ::Bool)
    # shortNames is a list of suggested short names of the resource.
    abstract def short_names : ::Array(String)?
    # :ditto:
    abstract def short_names! : ::Array(String)
    # :ditto:
    abstract def short_names? : ::Array(String)?
    # :ditto:
    abstract def short_names=(value : ::Array(String)?)
    # singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    abstract def singular_name : String
    # :ditto:
    abstract def singular_name! : String
    # :ditto:
    abstract def singular_name? : String?
    # :ditto:
    abstract def singular_name=(value : String)
    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    abstract def verbs : ::Array(String)
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
    # version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String?)
  end

  # APIResource specifies the name of a resource and whether it is namespaced.
  @[::K8S::Properties(
    categories: {key: "categories", accessor: "categories", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "categories is a list of the grouped resources this resource belongs to (e.g. 'all')", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "String", nilable: true, default: nil, read_only: false, description: "group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the plural name of the resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespaced: {key: "namespaced", accessor: "namespaced", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "namespaced indicates if a resource is namespaced or not.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    short_names: {key: "shortNames", accessor: "short_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "shortNames is a list of suggested short names of the resource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    singular_name: {key: "singularName", accessor: "singular_name", kind: "String", nilable: false, default: nil, read_only: false, description: "singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: true, default: nil, read_only: false, description: "version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::APIResource < ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResource::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResource
    include ::K8S::Kubernetes::Object

    # categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    def categories : ::Array(String)?
      self.["categories"].as(::Array(String)?)
    end

    # :ditto:
    def categories! : ::Array(String)
      self.["categories"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def categories? : ::Array(String)?
      self.["categories"]?.as(::Array(String)?)
    end

    # :ditto:
    def categories=(value : ::Array(String)?)
      self.["categories"] = value
    end

    # group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
    def group : String?
      self.["group"].as(String?)
    end

    # :ditto:
    def group! : String
      self.["group"].as(String?).not_nil!
    end

    # :ditto:
    def group? : String?
      self.["group"]?.as(String?)
    end

    # :ditto:
    def group=(value : String?)
      self.["group"] = value
    end

    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String)
      self.["kind"] = value
    end

    # name is the plural name of the resource.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # namespaced indicates if a resource is namespaced or not.
    def namespaced : ::Bool
      self.["namespaced"].as(::Bool)
    end

    # :ditto:
    def namespaced! : ::Bool
      self.["namespaced"].as(::Bool).not_nil!
    end

    # :ditto:
    def namespaced? : ::Bool?
      self.["namespaced"]?.as(::Bool?)
    end

    # :ditto:
    def namespaced=(value : ::Bool)
      self.["namespaced"] = value
    end

    # shortNames is a list of suggested short names of the resource.
    def short_names : ::Array(String)?
      self.["shortNames"].as(::Array(String)?)
    end

    # :ditto:
    def short_names! : ::Array(String)
      self.["shortNames"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def short_names? : ::Array(String)?
      self.["shortNames"]?.as(::Array(String)?)
    end

    # :ditto:
    def short_names=(value : ::Array(String)?)
      self.["shortNames"] = value
    end

    # singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    def singular_name : String
      self.["singularName"].as(String)
    end

    # :ditto:
    def singular_name! : String
      self.["singularName"].as(String).not_nil!
    end

    # :ditto:
    def singular_name? : String?
      self.["singularName"]?.as(String?)
    end

    # :ditto:
    def singular_name=(value : String)
      self.["singularName"] = value
    end

    # verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    def verbs : ::Array(String)
      self.["verbs"].as(::Array(String))
    end

    # :ditto:
    def verbs! : ::Array(String)
      self.["verbs"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def verbs? : ::Array(String)?
      self.["verbs"]?.as(::Array(String)?)
    end

    # :ditto:
    def verbs=(value : ::Array(String))
      self.["verbs"] = value
    end

    # version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
    def version : String?
      self.["version"].as(String?)
    end

    # :ditto:
    def version! : String
      self.["version"].as(String?).not_nil!
    end

    # :ditto:
    def version? : String?
      self.["version"]?.as(String?)
    end

    # :ditto:
    def version=(value : String?)
      self.["version"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "categories", accessor: "categories", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespaced", accessor: "namespaced", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "shortNames", accessor: "short_names", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "singularName", accessor: "singular_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
