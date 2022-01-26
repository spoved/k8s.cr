# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Lifecycle; end

require "./handler"

module K8S
  # Namespace holding the types for `Api::Core::V1::Lifecycle`.
  module Types::Api::Core::V1::Lifecycle
    # PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [[https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks))
    abstract def post_start : ::K8S::Api::Core::V1::Handler?
    # :ditto:
    abstract def post_start! : ::K8S::Api::Core::V1::Handler
    # :ditto:
    abstract def post_start? : ::K8S::Api::Core::V1::Handler?
    # :ditto:
    abstract def post_start=(value : ::K8S::Api::Core::V1::Handler?)
    # PreStop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: [[https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks))
    abstract def pre_stop : ::K8S::Api::Core::V1::Handler?
    # :ditto:
    abstract def pre_stop! : ::K8S::Api::Core::V1::Handler
    # :ditto:
    abstract def pre_stop? : ::K8S::Api::Core::V1::Handler?
    # :ditto:
    abstract def pre_stop=(value : ::K8S::Api::Core::V1::Handler?)
  end

  # Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
  @[::K8S::Properties(
    post_start: {key: "postStart", accessor: "post_start", kind: "::K8S::Api::Core::V1::Handler", nilable: true, default: nil, read_only: false, description: "PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pre_stop: {key: "preStop", accessor: "pre_stop", kind: "::K8S::Api::Core::V1::Handler", nilable: true, default: nil, read_only: false, description: "PreStop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: [https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Lifecycle < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Lifecycle

    # PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [[https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks))
    def post_start : ::K8S::Api::Core::V1::Handler?
      self.["postStart"].as(::K8S::Api::Core::V1::Handler?)
    end

    # :ditto:
    def post_start! : ::K8S::Api::Core::V1::Handler
      self.["postStart"].as(::K8S::Api::Core::V1::Handler?).not_nil!
    end

    # :ditto:
    def post_start? : ::K8S::Api::Core::V1::Handler?
      self.["postStart"]?.as(::K8S::Api::Core::V1::Handler?)
    end

    # :ditto:
    def post_start=(value : ::K8S::Api::Core::V1::Handler?)
      self.["postStart"] = value
    end

    # PreStop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: [[https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks))
    def pre_stop : ::K8S::Api::Core::V1::Handler?
      self.["preStop"].as(::K8S::Api::Core::V1::Handler?)
    end

    # :ditto:
    def pre_stop! : ::K8S::Api::Core::V1::Handler
      self.["preStop"].as(::K8S::Api::Core::V1::Handler?).not_nil!
    end

    # :ditto:
    def pre_stop? : ::K8S::Api::Core::V1::Handler?
      self.["preStop"]?.as(::K8S::Api::Core::V1::Handler?)
    end

    # :ditto:
    def pre_stop=(value : ::K8S::Api::Core::V1::Handler?)
      self.["preStop"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "postStart", accessor: "post_start", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Handler },
        { key: "preStop", accessor: "pre_stop", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Handler },
      ])
end
  end
end
