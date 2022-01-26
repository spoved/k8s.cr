# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation; end

require "./json_schema_props"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation
    # OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.
    abstract def open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    # :ditto:
    abstract def open_apiv3_schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
  end

  # CustomResourceValidation is a list of validation methods for CustomResources.
  @[::K8S::Properties(
    open_apiv3_schema: {key: "openAPIV3Schema", accessor: "open_apiv3_schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps", nilable: true, default: nil, read_only: false, description: "OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation

    # OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.
    def open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
      self.["openAPIV3Schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
    end

    # :ditto:
    def open_apiv3_schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
      self.["openAPIV3Schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?).not_nil!
    end

    # :ditto:
    def open_apiv3_schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?
      self.["openAPIV3Schema"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
    end

    # :ditto:
    def open_apiv3_schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps?)
      self.["openAPIV3Schema"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "openAPIV3Schema", accessor: "open_apiv3_schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps },
      ])
end
  end
end
