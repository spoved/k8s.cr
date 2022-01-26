# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    # Categories is a list of grouped resources custom resources belong to (e.g. 'all')
    abstract def categories : ::Array(String)?
    # :ditto:
    abstract def categories! : ::Array(String)
    # :ditto:
    abstract def categories? : ::Array(String)?
    # :ditto:
    abstract def categories=(value : ::Array(String)?)
    # Kind is the serialized kind of the resource.  It is normally CamelCase and singular.
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.
    abstract def list_kind : String?
    # :ditto:
    abstract def list_kind! : String
    # :ditto:
    abstract def list_kind? : String?
    # :ditto:
    abstract def list_kind=(value : String?)
    # Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase.
    abstract def plural : String
    # :ditto:
    abstract def plural! : String
    # :ditto:
    abstract def plural? : String?
    # :ditto:
    abstract def plural=(value : String)
    # ShortNames are short names for the resource.  It must be all lowercase.
    abstract def short_names : ::Array(String)?
    # :ditto:
    abstract def short_names! : ::Array(String)
    # :ditto:
    abstract def short_names? : ::Array(String)?
    # :ditto:
    abstract def short_names=(value : ::Array(String)?)
    # Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>
    abstract def singular : String?
    # :ditto:
    abstract def singular! : String
    # :ditto:
    abstract def singular? : String?
    # :ditto:
    abstract def singular=(value : String?)
  end

  # CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
  @[::K8S::Properties(
    categories: {key: "categories", accessor: "categories", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Categories is a list of grouped resources custom resources belong to (e.g. 'all')", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind is the serialized kind of the resource.  It is normally CamelCase and singular.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    list_kind: {key: "listKind", accessor: "list_kind", kind: "String", nilable: true, default: nil, read_only: false, description: "ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    plural: {key: "plural", accessor: "plural", kind: "String", nilable: false, default: nil, read_only: false, description: "Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    short_names: {key: "shortNames", accessor: "short_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ShortNames are short names for the resource.  It must be all lowercase.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    singular: {key: "singular", accessor: "singular", kind: "String", nilable: true, default: nil, read_only: false, description: "Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Categories is a list of grouped resources custom resources belong to (e.g. 'all')
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

    # Kind is the serialized kind of the resource.  It is normally CamelCase and singular.
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

    # ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.
    def list_kind : String?
      self.["listKind"].as(String?)
    end

    # :ditto:
    def list_kind! : String
      self.["listKind"].as(String?).not_nil!
    end

    # :ditto:
    def list_kind? : String?
      self.["listKind"]?.as(String?)
    end

    # :ditto:
    def list_kind=(value : String?)
      self.["listKind"] = value
    end

    # Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase.
    def plural : String
      self.["plural"].as(String)
    end

    # :ditto:
    def plural! : String
      self.["plural"].as(String).not_nil!
    end

    # :ditto:
    def plural? : String?
      self.["plural"]?.as(String?)
    end

    # :ditto:
    def plural=(value : String)
      self.["plural"] = value
    end

    # ShortNames are short names for the resource.  It must be all lowercase.
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

    # Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased <kind>
    def singular : String?
      self.["singular"].as(String?)
    end

    # :ditto:
    def singular! : String
      self.["singular"].as(String?).not_nil!
    end

    # :ditto:
    def singular? : String?
      self.["singular"]?.as(String?)
    end

    # :ditto:
    def singular=(value : String?)
      self.["singular"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "categories", accessor: "categories", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String },
        { key: "listKind", accessor: "list_kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "plural", accessor: "plural", nilable: false, read_only: false, default: nil, kind: String },
        { key: "shortNames", accessor: "short_names", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "singular", accessor: "singular", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
