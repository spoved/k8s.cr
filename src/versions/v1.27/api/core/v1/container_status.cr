# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./container_state"
require "./resource_requirements"

::K8S::Kubernetes::Resource.define_object("ContainerStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "allocated_resources", kind: Union(::Hash(String, ::Int32 | ::String)), key: "allocatedResources", nilable: true, read_only: false, description: "AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize."},
    {name: "container_id", kind: String, key: "containerID", nilable: true, read_only: false, description: "ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example \"containerd\")."},
    {name: "image", kind: String, key: "image", nilable: false, read_only: false, description: "Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: [https://kubernetes.io/docs/concepts/containers/images.](https://kubernetes.io/docs/concepts/containers/images.)"},
    {name: "image_id", kind: String, key: "imageID", nilable: false, read_only: false, description: "ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime."},
    {name: "last_state", kind: ::K8S::Api::Core::V1::ContainerState, key: "lastState", nilable: true, read_only: false, description: "LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated."},
    {name: "ready", kind: ::Bool, key: "ready", nilable: false, read_only: false, description: "Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).\n\nThe value is typically used to determine whether a container is ready to accept traffic."},
    {name: "resources", kind: ::K8S::Api::Core::V1::ResourceRequirements, key: "resources", nilable: true, read_only: false, description: "Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized."},
    {name: "restart_count", kind: Int32, key: "restartCount", nilable: false, read_only: false, description: "RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative."},
    {name: "started", kind: ::Bool, key: "started", nilable: true, read_only: false, description: "Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false."},
    {name: "state", kind: ::K8S::Api::Core::V1::ContainerState, key: "state", nilable: true, read_only: false, description: "State holds details about the container's current condition."},

  ]
)
