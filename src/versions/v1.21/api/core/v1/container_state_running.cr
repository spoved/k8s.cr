# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStateRunning; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStateRunning`.
  module Types::Api::Core::V1::ContainerStateRunning
    # Time at which the container was last (re-)started
    abstract def started_at : ::Time?
    # :ditto:
    abstract def started_at! : ::Time
    # :ditto:
    abstract def started_at? : ::Time?
    # :ditto:
    abstract def started_at=(value : ::Time?)
  end

  # ContainerStateRunning is a running state of a container.
  @[::K8S::Properties(
    started_at: {key: "startedAt", accessor: "started_at", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time at which the container was last (re-)started", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerStateRunning < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerStateRunning

    # Time at which the container was last (re-)started
    def started_at : ::Time?
      self.["startedAt"].as(::Time?)
    end

    # :ditto:
    def started_at! : ::Time
      self.["startedAt"].as(::Time?).not_nil!
    end

    # :ditto:
    def started_at? : ::Time?
      self.["startedAt"]?.as(::Time?)
    end

    # :ditto:
    def started_at=(value : ::Time?)
      self.["startedAt"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "startedAt", accessor: "started_at", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
