# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIService; end

require "../../../../apimachinery/apis/meta/v1/object_meta"
require "./api_service_spec"
require "./api_service_status"

module K8S
  # Namespace holding the types for `KubeAggregator::Apis::Apiregistration::V1::APIService`.
  module Types::KubeAggregator::Apis::Apiregistration::V1::APIService
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec | ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus | Nil
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
    # Spec contains information for locating and communicating with a server
    abstract def spec : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?
    # :ditto:
    abstract def spec! : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
    # :ditto:
    abstract def spec? : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?)
    # Status contains derived information about an API server
    abstract def status : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?
    # :ditto:
    abstract def status! : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
    # :ditto:
    abstract def status? : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?
    # :ditto:
    abstract def status=(value : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?)
  end

  # APIService represents a server for a particular GroupVersion. Name must be "version.group".
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "APIService", version: "v1", full: "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1.APIService")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "apiregistration/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "APIService", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec", nilable: true, default: nil, read_only: false, description: "Spec contains information for locating and communicating with a server"},
    status: {key: "status", accessor: "status", kind: "::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus", nilable: true, default: nil, read_only: false, description: "Status contains derived information about an API server"},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::APIService < ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIService::Instance
    include ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIService
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

    # Spec contains information for locating and communicating with a server
    def spec : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?
      self.["spec"].as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?)
    end

    # :ditto:
    def spec! : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
      self.["spec"].as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?
      self.["spec"]?.as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec?)
      self.["spec"] = value
    end

    # Status contains derived information about an API server
    def status : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?
      self.["status"].as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?)
    end

    # :ditto:
    def status! : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
      self.["status"].as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?
      self.["status"]?.as(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "apiregistration/v1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "APIService", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus },
      ])
end
  end

  module Resources::Apiregistration::V1
    alias APIService = ::K8S::KubeAggregator::Apis::Apiregistration::V1::APIService
  end
end
