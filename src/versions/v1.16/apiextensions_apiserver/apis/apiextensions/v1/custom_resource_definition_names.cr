# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    alias ValueType = ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
    abstract def categories : ::Array(String)?
    # :ditto:
    abstract def categories! : ::Array(String)
    # :ditto:
    abstract def categories? : ::Array(String)?
    # :ditto:
    abstract def categories=(value : ::Array(String)?)
    # kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
    abstract def list_kind : String?
    # :ditto:
    abstract def list_kind! : String
    # :ditto:
    abstract def list_kind? : String?
    # :ditto:
    abstract def list_kind=(value : String?)
    # plural is the plural name of the resource to serve. The custom resources are served under [[`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)]([`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.))
    abstract def plural : String
    # :ditto:
    abstract def plural! : String
    # :ditto:
    abstract def plural? : String?
    # :ditto:
    abstract def plural=(value : String)
    # shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
    abstract def short_names : ::Array(String)?
    # :ditto:
    abstract def short_names! : ::Array(String)
    # :ditto:
    abstract def short_names? : ::Array(String)?
    # :ditto:
    abstract def short_names=(value : ::Array(String)?)
    # singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
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
    categories: {key: "categories", accessor: "categories", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`."},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls."},
    list_kind: {key: "listKind", accessor: "list_kind", kind: "String", nilable: true, default: nil, read_only: false, description: "listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\"."},
    plural: {key: "plural", accessor: "plural", kind: "String", nilable: false, default: nil, read_only: false, description: "plural is the plural name of the resource to serve. The custom resources are served under [`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)"},
    short_names: {key: "shortNames", accessor: "short_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase."},
    singular: {key: "singular", accessor: "singular", kind: "String", nilable: true, default: nil, read_only: false, description: "singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    include ::K8S::Kubernetes::Object

    # categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
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

    # kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
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

    # listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
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

    # plural is the plural name of the resource to serve. The custom resources are served under [[`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.)]([`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.](`/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.))
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

    # shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
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

    # singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
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
