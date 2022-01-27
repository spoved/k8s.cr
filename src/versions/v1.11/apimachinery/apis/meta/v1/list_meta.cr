# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ListMeta; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ListMeta`.
  module Types::Apimachinery::Apis::Meta::V1::ListMeta
    # continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.
    abstract def continue : String?
    # :ditto:
    abstract def continue! : String
    # :ditto:
    abstract def continue? : String?
    # :ditto:
    abstract def continue=(value : String)
    # String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency))
    abstract def resource_version : String?
    # :ditto:
    abstract def resource_version! : String
    # :ditto:
    abstract def resource_version? : String?
    # :ditto:
    abstract def resource_version=(value : String)
    # selfLink is a URL representing this object. Populated by the system. Read-only.
    abstract def self_link : String?
    # :ditto:
    abstract def self_link! : String
    # :ditto:
    abstract def self_link? : String?
    # :ditto:
    abstract def self_link=(value : String)
  end

  # ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
  @[::K8S::Properties(
    continue: {key: "continue", accessor: "continue", kind: "String", nilable: true, default: nil, read_only: false, description: "continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    self_link: {key: "selfLink", accessor: "self_link", kind: "String", nilable: true, default: nil, read_only: false, description: "selfLink is a URL representing this object. Populated by the system. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::ListMeta < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ListMeta
    k8s_object_accessor("continue", continue : String, true, false, "continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.")
    k8s_object_accessor("resourceVersion", resource_version : String, true, false, "String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)")
    k8s_object_accessor("selfLink", self_link : String, true, false, "selfLink is a URL representing this object. Populated by the system. Read-only.")

    def initialize(*, continue : String? = nil, resource_version : String? = nil, self_link : String? = nil)
      super()
      self.["continue"] = continue
      self.["resourceVersion"] = resource_version
      self.["selfLink"] = self_link
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "continue", accessor: "continue", nilable: true, read_only: false, default: nil, kind: String},
      {key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "selfLink", accessor: "self_link", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
