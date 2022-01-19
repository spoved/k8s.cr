# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition; end

require "../../../../apimachinery/apis/meta/v1/object_meta"
require "./custom_resource_definition_spec"
require "./custom_resource_definition_status"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # spec describes how the user wants the resources to appear
    abstract def spec : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    # :ditto:
    abstract def spec! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    # :ditto:
    abstract def spec? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec)
    # status indicates the actual state of the CustomResourceDefinition
    abstract def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?
    # :ditto:
    abstract def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus
    # :ditto:
    abstract def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?
    # :ditto:
    abstract def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?)
  end

  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "CustomResourceDefinition", version: "v1", full: "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinition")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "apiextensions/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "CustomResourceDefinition", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec", nilable: false, default: nil, read_only: false, description: "spec describes how the user wants the resources to appear"},
    status: {key: "status", accessor: "status", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus", nilable: true, default: nil, read_only: false, description: "status indicates the actual state of the CustomResourceDefinition"},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition
    include ::K8S::Kubernetes::Resource::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
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

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # spec describes how the user wants the resources to appear
    def spec : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
      self.["spec"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec)
    end

    # :ditto:
    def spec! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
      self.["spec"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec?
      self.["spec"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec)
      self.["spec"] = value
    end

    # status indicates the actual state of the CustomResourceDefinition
    def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?)
    end

    # :ditto:
    def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?
      self.["status"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "apiextensions/v1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "CustomResourceDefinition", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: false, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus },
      ])
end
  end

  module Resources::Apiextensions::V1
    alias CustomResourceDefinition = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition
  end
end
