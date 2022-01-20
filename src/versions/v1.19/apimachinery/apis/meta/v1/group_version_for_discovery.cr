# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery`.
  module Types::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # groupVersion specifies the API group and version in the form [["group/version"]("group/version")](["group/version"]("group/version"))
    abstract def group_version : String
    # :ditto:
    abstract def group_version! : String
    # :ditto:
    abstract def group_version? : String?
    # :ditto:
    abstract def group_version=(value : String)
    # version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
    abstract def version : String
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String)
  end

  # GroupVersion contains the ["group/version" and "version" string of a version. It is made a struct to keep extensibility.]("group/version" and "version" string of a version. It is made a struct to keep extensibility.)
  @[::K8S::Properties(
    group_version: {key: "groupVersion", accessor: "group_version", kind: "String", nilable: false, default: nil, read_only: false, description: "groupVersion specifies the API group and version in the form [\"group/version\"](\"group/version\")", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: false, default: nil, read_only: false, description: "version specifies the version in the form of \"version\". This is to save the clients the trouble of splitting the GroupVersion.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery < ::K8S::Types::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    include ::K8S::Kubernetes::Object

    # groupVersion specifies the API group and version in the form [["group/version"]("group/version")](["group/version"]("group/version"))
    def group_version : String
      self.["groupVersion"].as(String)
    end

    # :ditto:
    def group_version! : String
      self.["groupVersion"].as(String).not_nil!
    end

    # :ditto:
    def group_version? : String?
      self.["groupVersion"]?.as(String?)
    end

    # :ditto:
    def group_version=(value : String)
      self.["groupVersion"] = value
    end

    # version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
    def version : String
      self.["version"].as(String)
    end

    # :ditto:
    def version! : String
      self.["version"].as(String).not_nil!
    end

    # :ditto:
    def version? : String?
      self.["version"]?.as(String?)
    end

    # :ditto:
    def version=(value : String)
      self.["version"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "groupVersion", accessor: "group_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "version", accessor: "version", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
