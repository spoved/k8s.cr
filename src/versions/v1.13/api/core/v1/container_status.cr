# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./container_state"

::K8S::Kubernetes::Resource.define_object("ContainerStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "container_id", kind: String, key: "containerID", nilable: true, read_only: false, description: "Container's ID in the format 'docker://<container_id>'."},
    {name: "image", kind: String, key: "image", nilable: false, read_only: false, description: "The image the container is running. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)"},
    {name: "image_id", kind: String, key: "imageID", nilable: false, read_only: false, description: "ImageID of the container's image."},
    {name: "last_state", kind: ::K8S::Api::Core::V1::ContainerState, key: "lastState", nilable: true, read_only: false, description: "Details about the container's last termination condition."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated."},
    {name: "ready", kind: ::Bool, key: "ready", nilable: false, read_only: false, description: "Specifies whether the container has passed its readiness probe."},
    {name: "restart_count", kind: Int32, key: "restartCount", nilable: false, read_only: false, description: "The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC."},
    {name: "state", kind: ::K8S::Api::Core::V1::ContainerState, key: "state", nilable: true, read_only: false, description: "Details about the container's current condition."},

  ]
)
