# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::UncountedTerminatedPods; end

module K8S
  # Namespace holding the types for `Api::Batch::V1::UncountedTerminatedPods`.
  module Types::Api::Batch::V1::UncountedTerminatedPods
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Failed holds UIDs of failed Pods.
    abstract def failed : ::Array(String)?
    # :ditto:
    abstract def failed! : ::Array(String)
    # :ditto:
    abstract def failed? : ::Array(String)?
    # :ditto:
    abstract def failed=(value : ::Array(String)?)
    # Succeeded holds UIDs of succeeded Pods.
    abstract def succeeded : ::Array(String)?
    # :ditto:
    abstract def succeeded! : ::Array(String)
    # :ditto:
    abstract def succeeded? : ::Array(String)?
    # :ditto:
    abstract def succeeded=(value : ::Array(String)?)
  end

  # UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
  @[::K8S::Properties(
    failed: {key: "failed", accessor: "failed", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Failed holds UIDs of failed Pods."},
    succeeded: {key: "succeeded", accessor: "succeeded", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Succeeded holds UIDs of succeeded Pods."},
  )]
  class Api::Batch::V1::UncountedTerminatedPods < ::K8S::Types::Api::Batch::V1::UncountedTerminatedPods::Instance
    include ::K8S::Types::Api::Batch::V1::UncountedTerminatedPods
    include ::K8S::Kubernetes::Object

    # Failed holds UIDs of failed Pods.
    def failed : ::Array(String)?
      self.["failed"].as(::Array(String)?)
    end

    # :ditto:
    def failed! : ::Array(String)
      self.["failed"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def failed? : ::Array(String)?
      self.["failed"]?.as(::Array(String)?)
    end

    # :ditto:
    def failed=(value : ::Array(String)?)
      self.["failed"] = value
    end

    # Succeeded holds UIDs of succeeded Pods.
    def succeeded : ::Array(String)?
      self.["succeeded"].as(::Array(String)?)
    end

    # :ditto:
    def succeeded! : ::Array(String)
      self.["succeeded"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def succeeded? : ::Array(String)?
      self.["succeeded"]?.as(::Array(String)?)
    end

    # :ditto:
    def succeeded=(value : ::Array(String)?)
      self.["succeeded"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "failed", accessor: "failed", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "succeeded", accessor: "succeeded", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
