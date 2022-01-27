# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources; end

require "./custom_resource_subresource_scale"
require "./custom_resource_subresource_status"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    # Scale denotes the scale subresource for CustomResources
    abstract def scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    # :ditto:
    abstract def scale? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale)
    # Status denotes the status subresource for CustomResources
    abstract def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus
    # :ditto:
    abstract def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus)
  end

  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  @[::K8S::Properties(
    scale: {key: "scale", accessor: "scale", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale", nilable: true, default: nil, read_only: false, description: "Scale denotes the scale subresource for CustomResources", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus", nilable: true, default: nil, read_only: false, description: "Status denotes the status subresource for CustomResources", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    k8s_object_accessor("scale", scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale, true, false, "Scale denotes the scale subresource for CustomResources")
    k8s_object_accessor("status", status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus, true, false, "Status denotes the status subresource for CustomResources")

    def initialize(*, scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale? = nil, status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus? = nil)
      super()
      self.["scale"] = scale
      self.["status"] = status
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "scale", accessor: "scale", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale},
      {key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus},
    ])
  end
end
