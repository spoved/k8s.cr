# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Served is a flag [[enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)]([enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs))
    abstract def served : ::Bool?
    # :ditto:
    abstract def served! : ::Bool
    # :ditto:
    abstract def served? : ::Bool?
    # :ditto:
    abstract def served=(value : ::Bool)
    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    abstract def storage : ::Bool?
    # :ditto:
    abstract def storage! : ::Bool
    # :ditto:
    abstract def storage? : ::Bool?
    # :ditto:
    abstract def storage=(value : ::Bool)
  end

  #
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    served: {key: "served", accessor: "served", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage: {key: "storage", accessor: "storage", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    k8s_object_accessor("name", name : String, false, false, "Name is the version name, e.g. “v1”, “v2beta1”, etc.")
    k8s_object_accessor("served", served : ::Bool, false, false, "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)")
    k8s_object_accessor("storage", storage : ::Bool, false, false, "Storage flags the version as storage version. There must be exactly one flagged as storage version.")

    def initialize(*, name : String? = nil, served : ::Bool? = nil, storage : ::Bool? = nil)
      super()
      self.["name"] = name
      self.["served"] = served
      self.["storage"] = storage
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "served", accessor: "served", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "storage", accessor: "storage", nilable: false, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
