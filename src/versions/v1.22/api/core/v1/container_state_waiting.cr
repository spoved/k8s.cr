# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStateWaiting; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStateWaiting`.
  module Types::Api::Core::V1::ContainerStateWaiting
    # Message regarding why the container is not yet running.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # (brief) reason the container is not yet running.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
  end

  # ContainerStateWaiting is a waiting state of a container.
  @[::K8S::Properties(
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Message regarding why the container is not yet running.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "(brief) reason the container is not yet running.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerStateWaiting < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerStateWaiting
    k8s_object_accessor("message", message : String, true, false, "Message regarding why the container is not yet running.")
    k8s_object_accessor("reason", reason : String, true, false, "(brief) reason the container is not yet running.")

    def initialize(*, message : String? = nil, reason : String? = nil)
      super()
      self.["message"] = message
      self.["reason"] = reason
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
