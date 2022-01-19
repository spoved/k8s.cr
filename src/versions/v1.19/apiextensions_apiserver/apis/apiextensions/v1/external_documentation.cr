# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    #
    abstract def description : String?
    # :ditto:
    abstract def description! : String
    # :ditto:
    abstract def description? : String?
    # :ditto:
    abstract def description=(value : String?)
    #
    abstract def url : String?
    # :ditto:
    abstract def url! : String
    # :ditto:
    abstract def url? : String?
    # :ditto:
    abstract def url=(value : String?)
  end

  # ExternalDocumentation allows referencing an external resource for extended documentation.
  @[::K8S::Properties(
    description: {key: "description", accessor: "description", kind: "String", nilable: true, default: nil, read_only: false, description: nil},
    url: {key: "url", accessor: "url", kind: "String", nilable: true, default: nil, read_only: false, description: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation
    include ::K8S::Kubernetes::Object

    #
    def description : String?
      self.["description"].as(String?)
    end

    # :ditto:
    def description! : String
      self.["description"].as(String?).not_nil!
    end

    # :ditto:
    def description? : String?
      self.["description"]?.as(String?)
    end

    # :ditto:
    def description=(value : String?)
      self.["description"] = value
    end

    #
    def url : String?
      self.["url"].as(String?)
    end

    # :ditto:
    def url! : String
      self.["url"].as(String?).not_nil!
    end

    # :ditto:
    def url? : String?
      self.["url"]?.as(String?)
    end

    # :ditto:
    def url=(value : String?)
      self.["url"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "description", accessor: "description", nilable: true, read_only: false, default: nil, kind: String },
        { key: "url", accessor: "url", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
