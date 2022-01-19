# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources; end

require "./custom_resource_subresource_scale"
require "./custom_resource_subresource_status"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    alias ValueType = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Scale denotes the scale subresource for CustomResources
    abstract def scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    # :ditto:
    abstract def scale? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?)
    # Status denotes the status subresource for CustomResources
    abstract def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus
    # :ditto:
    abstract def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?)
  end

  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  @[::K8S::Properties(
    scale: {key: "scale", accessor: "scale", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale", nilable: true, default: nil, read_only: false, description: "Scale denotes the scale subresource for CustomResources"},
    status: {key: "status", accessor: "status", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus", nilable: true, default: nil, read_only: false, description: "Status denotes the status subresource for CustomResources"},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    include ::K8S::Kubernetes::Object

    # Scale denotes the scale subresource for CustomResources
    def scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
      self.["scale"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?)
    end

    # :ditto:
    def scale! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
      self.["scale"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?).not_nil!
    end

    # :ditto:
    def scale? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
      self.["scale"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?)
    end

    # :ditto:
    def scale=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?)
      self.["scale"] = value
    end

    # Status denotes the status subresource for CustomResources
    def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?)
    end

    # :ditto:
    def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
      self.["status"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "scale", accessor: "scale", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus },
      ])
end
  end
end
