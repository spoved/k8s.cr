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
    abstract def add=(value : ::Array(String)?)
    # Removed capabilities
    abstract def drop : ::Array(String)?
    # :ditto:
    abstract def drop! : ::Array(String)
    # :ditto:
    abstract def drop? : ::Array(String)?
    # :ditto:
    abstract def drop=(value : ::Array(String)?)
  end

  # Adds and removes POSIX capabilities from running containers.
  @[::K8S::Properties(
    add: {key: "add", accessor: "add", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Added capabilities", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    drop: {key: "drop", accessor: "drop", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Removed capabilities", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Capabilities < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Capabilities

    # Added capabilities
    def add : ::Array(String)?
      self.["add"].as(::Array(String)?)
    end

    # :ditto:
    def add! : ::Array(String)
      self.["add"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def add? : ::Array(String)?
      self.["add"]?.as(::Array(String)?)
    end

    # :ditto:
    def add=(value : ::Array(String)?)
      self.["add"] = value
    end

    # Removed capabilities
    def drop : ::Array(String)?
      self.["drop"].as(::Array(String)?)
    end

    # :ditto:
    def drop! : ::Array(String)
      self.["drop"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def drop? : ::Array(String)?
      self.["drop"]?.as(::Array(String)?)
    end

    # :ditto:
    def drop=(value : ::Array(String)?)
      self.["drop"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "add", accessor: "add", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "drop", accessor: "drop", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
