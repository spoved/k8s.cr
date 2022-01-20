# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::UncountedTerminatedPods; end

module K8S
  # Namespace holding the types for `Api::Batch::V1::UncountedTerminatedPods`.
  module Types::Api::Batch::V1::UncountedTerminatedPods
    alias ValueType = ::Set(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Failed holds UIDs of failed Pods.
    abstract def failed : ::Set(String)?
    # :ditto:
    abstract def failed! : ::Set(String)
    # :ditto:
    abstract def failed? : ::Set(String)?
    # :ditto:
    abstract def failed=(value : ::Set(String)?)
    # Succeeded holds UIDs of succeeded Pods.
    abstract def succeeded : ::Set(String)?
    # :ditto:
    abstract def succeeded! : ::Set(String)
    # :ditto:
    abstract def succeeded? : ::Set(String)?
    # :ditto:
    abstract def succeeded=(value : ::Set(String)?)
  end

  # UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
  @[::K8S::Properties(
    failed: {key: "failed", accessor: "failed", kind: "::Set(String)", nilable: true, default: nil, read_only: false, description: "Failed holds UIDs of failed Pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    succeeded: {key: "succeeded", accessor: "succeeded", kind: "::Set(String)", nilable: true, default: nil, read_only: false, description: "Succeeded holds UIDs of succeeded Pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1::UncountedTerminatedPods < ::K8S::Types::Api::Batch::V1::UncountedTerminatedPods::Instance
    include ::K8S::Types::Api::Batch::V1::UncountedTerminatedPods
    include ::K8S::Kubernetes::Object

    # Failed holds UIDs of failed Pods.
    def failed : ::Set(String)?
      self.["failed"].as(::Set(String)?)
    end

    # :ditto:
    def failed! : ::Set(String)
      self.["failed"].as(::Set(String)?).not_nil!
    end

    # :ditto:
    def failed? : ::Set(String)?
      self.["failed"]?.as(::Set(String)?)
    end

    # :ditto:
    def failed=(value : ::Set(String)?)
      self.["failed"] = value
    end

    # Succeeded holds UIDs of succeeded Pods.
    def succeeded : ::Set(String)?
      self.["succeeded"].as(::Set(String)?)
    end

    # :ditto:
    def succeeded! : ::Set(String)
      self.["succeeded"].as(::Set(String)?).not_nil!
    end

    # :ditto:
    def succeeded? : ::Set(String)?
      self.["succeeded"]?.as(::Set(String)?)
    end

    # :ditto:
    def succeeded=(value : ::Set(String)?)
      self.["succeeded"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "failed", accessor: "failed", nilable: true, read_only: false, default: nil, kind: ::Set(String) },
        { key: "succeeded", accessor: "succeeded", nilable: true, read_only: false, default: nil, kind: ::Set(String) },
      ])
end
  end
end
