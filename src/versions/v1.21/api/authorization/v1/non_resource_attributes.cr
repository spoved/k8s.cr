# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::NonResourceAttributes; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::NonResourceAttributes`.
  module Types::Api::Authorization::V1::NonResourceAttributes
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Path is the URL path of the request
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String?)
    # Verb is the standard HTTP verb
    abstract def verb : String?
    # :ditto:
    abstract def verb! : String
    # :ditto:
    abstract def verb? : String?
    # :ditto:
    abstract def verb=(value : String?)
  end

  # NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
  @[::K8S::Properties(
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path is the URL path of the request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verb: {key: "verb", accessor: "verb", kind: "String", nilable: true, default: nil, read_only: false, description: "Verb is the standard HTTP verb", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::NonResourceAttributes < ::K8S::Types::Api::Authorization::V1::NonResourceAttributes::Instance
    include ::K8S::Types::Api::Authorization::V1::NonResourceAttributes
    include ::K8S::Kubernetes::Object

    # Path is the URL path of the request
    def path : String?
      self.["path"].as(String?)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String?).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String?)
      self.["path"] = value
    end

    # Verb is the standard HTTP verb
    def verb : String?
      self.["verb"].as(String?)
    end

    # :ditto:
    def verb! : String
      self.["verb"].as(String?).not_nil!
    end

    # :ditto:
    def verb? : String?
      self.["verb"]?.as(String?)
    end

    # :ditto:
    def verb=(value : String?)
      self.["verb"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "verb", accessor: "verb", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
