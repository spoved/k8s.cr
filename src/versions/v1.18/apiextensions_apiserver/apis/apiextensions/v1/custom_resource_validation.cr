# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation; end

require "./json_schema_props"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
    # openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    abstract def open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps
    # :ditto:
    abstract def open_apiv3_schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)
  end

  # CustomResourceValidation is a list of validation methods for CustomResources.
  @[::K8S::Properties(
    open_apiv3_schema: {key: "openAPIV3Schema", accessor: "open_apiv3_schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps", nilable: true, default: nil, read_only: false, description: "openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
    k8s_object_accessor("openAPIV3Schema", open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps, true, false, "openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.")

    def initialize(*, open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps? = nil)
      super()
      self.["openAPIV3Schema"] = open_apiv3_schema
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "openAPIV3Schema", accessor: "open_apiv3_schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps},
    ])
  end
end
