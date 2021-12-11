# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
  @[::K8S::Properties(
    post_start: {type: Api::Core::V1::Handler, nilable: true, key: "postStart", getter: false, setter: false},
    pre_stop: {type: Api::Core::V1::Handler, nilable: true, key: "preStop", getter: false, setter: false},
  )]
  class Api::Core::V1::Lifecycle
    include ::JSON::Serializable
    include ::YAML::Serializable

    # PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)
    @[::JSON::Field(key: "postStart", emit_null: false)]
    @[::YAML::Field(key: "postStart", emit_null: false)]
    property post_start : Api::Core::V1::Handler | Nil

    # PreStop is called immediately before a container is terminated due to an API request or management event such as [liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)
    @[::JSON::Field(key: "preStop", emit_null: false)]
    @[::YAML::Field(key: "preStop", emit_null: false)]
    property pre_stop : Api::Core::V1::Handler | Nil

    def initialize(*, @post_start : Api::Core::V1::Handler | Nil = nil, @pre_stop : Api::Core::V1::Handler | Nil = nil)
    end
  end
end