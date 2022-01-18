# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::ContainerStateRunning; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStateRunning`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::ContainerStateRunning
    alias Key = String
    alias ValueType = ::Time | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

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
    started_at: {key: "startedAt", accessor: "started_at", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time at which the container was last (re-)started"},
  )]
  class Api::Core::V1::ContainerStateRunning < ::K8S::Types::Api::Core::V1::ContainerStateRunning::Instance
    include ::K8S::Types::Api::Core::V1::ContainerStateRunning
    include ::K8S::Kubernetes::Object

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
