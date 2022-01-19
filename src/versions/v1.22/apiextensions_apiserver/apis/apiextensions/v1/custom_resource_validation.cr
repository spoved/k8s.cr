# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation; end

require "./json_schema_props"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
    alias ValueType = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Nil
    alias Instance = ::K8S::Object(ValueType)

    # openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    abstract def open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
    # :ditto:
    abstract def open_apiv3_schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?
    # :ditto:
    abstract def open_apiv3_schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?)
  end

  # CustomResourceValidation is a list of validation methods for CustomResources.
  @[::K8S::Properties(
    open_apiv3_schema: {key: "openAPIV3Schema", accessor: "open_apiv3_schema", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps", nilable: true, default: nil, read_only: false, description: "openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation
    include ::K8S::Kubernetes::Object

    # openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    def open_apiv3_schema : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?
      self.["openAPIV3Schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?)
    end

    # :ditto:
    def open_apiv3_schema! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
      self.["openAPIV3Schema"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?).not_nil!
    end

    # :ditto:
    def open_apiv3_schema? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?
      self.["openAPIV3Schema"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?)
    end

    # :ditto:
    def open_apiv3_schema=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps?)
      self.["openAPIV3Schema"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "openAPIV3Schema", accessor: "open_apiv3_schema", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps },
      ])
end
  end
end
