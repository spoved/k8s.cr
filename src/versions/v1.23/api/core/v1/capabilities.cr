# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Capabilities; end

module K8S
  # Namespace holding the types for `Api::Core::V1::Capabilities`.
  module Types::Api::Core::V1::Capabilities
    # Added capabilities
    abstract def add : ::Array(String)?
    # :ditto:
    abstract def add! : ::Array(String)
    # :ditto:
    abstract def add? : ::Array(String)?
    # :ditto:
    abstract def add=(value : ::Array(String))
    # Removed capabilities
    abstract def drop : ::Array(String)?
    # :ditto:
    abstract def drop! : ::Array(String)
    # :ditto:
    abstract def drop? : ::Array(String)?
    # :ditto:
    abstract def drop=(value : ::Array(String))
  end

  # Adds and removes POSIX capabilities from running containers.
  @[::K8S::Properties(
    add: {key: "add", accessor: "add", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Added capabilities", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    drop: {key: "drop", accessor: "drop", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Removed capabilities", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Capabilities < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Capabilities
    k8s_object_accessor("add", add : ::Array(String), true, false, "Added capabilities")
    k8s_object_accessor("drop", drop : ::Array(String), true, false, "Removed capabilities")

    def initialize(*, add : ::Array(String)? = nil, drop : ::Array(String)? = nil)
      super()
      self.["add"] = add
      self.["drop"] = drop
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "add", accessor: "add", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "drop", accessor: "drop", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
