# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    alias ValueType = String | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    abstract def storage : ::Bool
    # :ditto:
    abstract def storage! : ::Bool
    # :ditto:
    abstract def storage? : ::Bool?
    # :ditto:
    abstract def storage=(value : ::Bool)
  end

  #
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc."},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::K8S::Kubernetes::Object

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
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

    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    def served : ::Bool
      self.["served"].as(::Bool)
    end

    # :ditto:
    def served! : ::Bool
      self.["served"].as(::Bool).not_nil!
    end

    # :ditto:
    def served? : ::Bool?
      self.["served"]?.as(::Bool?)
    end

    # :ditto:
    def served=(value : ::Bool)
      self.["served"] = value
    end

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    def storage : ::Bool
      self.["storage"].as(::Bool)
    end

    # :ditto:
    def storage! : ::Bool
      self.["storage"].as(::Bool).not_nil!
    end

    # :ditto:
    def storage? : ::Bool?
      self.["storage"]?.as(::Bool?)
    end

    # :ditto:
    def storage=(value : ::Bool)
      self.["storage"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
