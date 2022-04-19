# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./handler"

::K8S::Kubernetes::Resource.define_object("Lifecycle",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "post_start", kind: ::K8S::Api::Core::V1::Handler, key: "postStart", nilable: true, read_only: false, description: "PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)"},
    {name: "pre_stop", kind: ::K8S::Api::Core::V1::Handler, key: "preStop", nilable: true, read_only: false, description: "PreStop is called immediately before a container is terminated due to an API request or management event such as [liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks](liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks)"},

  ]
)
