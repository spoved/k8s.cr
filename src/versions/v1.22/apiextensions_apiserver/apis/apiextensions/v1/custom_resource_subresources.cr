# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources; end

require "./custom_resource_subresource_scale"
require "./custom_resource_subresource_status"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources
    alias ValueType = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # scale indicates the custom resource should serve a [[`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.)]([`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.))
    abstract def scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale
    # :ditto:
    abstract def scale? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?
    # :ditto:
    abstract def scale=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?)
    # status indicates the custom resource should serve a [[`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.)]([`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.))
    abstract def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus
    # :ditto:
    abstract def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?
    # :ditto:
    abstract def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?)
  end

  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  @[::K8S::Properties(
    scale: {key: "scale", accessor: "scale", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale", nilable: true, default: nil, read_only: false, description: "scale indicates the custom resource should serve a [`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus", nilable: true, default: nil, read_only: false, description: "status indicates the custom resource should serve a [`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources
    include ::K8S::Kubernetes::Object

    # scale indicates the custom resource should serve a [[`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.)]([`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.))
    def scale : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?
      self.["scale"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?)
    end

    # :ditto:
    def scale! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale
      self.["scale"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?).not_nil!
    end

    # :ditto:
    def scale? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?
      self.["scale"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?)
    end

    # :ditto:
    def scale=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale?)
      self.["scale"] = value
    end

    # status indicates the custom resource should serve a [[`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.)]([`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.))
    def status : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?)
    end

    # :ditto:
    def status! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus
      self.["status"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?
      self.["status"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "scale", accessor: "scale", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus },
      ])
end
  end
end
