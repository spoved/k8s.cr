# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStatus; end

require "./container_state"

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStatus`.
  module Types::Api::Core::V1::ContainerStatus
    # Container's ID in the format 'docker://<container_id>'.
    abstract def container_id : String?
    # :ditto:
    abstract def container_id! : String
    # :ditto:
    abstract def container_id? : String?
    # :ditto:
    abstract def container_id=(value : String)
    # The image the container is running. More info: [[https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)](https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images))
    abstract def image : String?
    # :ditto:
    abstract def image! : String
    # :ditto:
    abstract def image? : String?
    # :ditto:
    abstract def image=(value : String)
    # ImageID of the container's image.
    abstract def image_id : String?
    # :ditto:
    abstract def image_id! : String
    # :ditto:
    abstract def image_id? : String?
    # :ditto:
    abstract def image_id=(value : String)
    # Details about the container's last termination condition.
    abstract def last_state : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def last_state! : ::K8S::Api::Core::V1::ContainerState
    # :ditto:
    abstract def last_state? : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def last_state=(value : ::K8S::Api::Core::V1::ContainerState)
    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Specifies whether the container has passed its readiness probe.
    abstract def ready : ::Bool?
    # :ditto:
    abstract def ready! : ::Bool
    # :ditto:
    abstract def ready? : ::Bool?
    # :ditto:
    abstract def ready=(value : ::Bool)
    # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
    abstract def restart_count : Int32?
    # :ditto:
    abstract def restart_count! : Int32
    # :ditto:
    abstract def restart_count? : Int32?
    # :ditto:
    abstract def restart_count=(value : Int32)
    # Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
    abstract def started : ::Bool?
    # :ditto:
    abstract def started! : ::Bool
    # :ditto:
    abstract def started? : ::Bool?
    # :ditto:
    abstract def started=(value : ::Bool)
    # Details about the container's current condition.
    abstract def state : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def state! : ::K8S::Api::Core::V1::ContainerState
    # :ditto:
    abstract def state? : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def state=(value : ::K8S::Api::Core::V1::ContainerState)
  end

  # ContainerStatus contains details for the current status of this container.
  @[::K8S::Properties(
    container_id: {key: "containerID", accessor: "container_id", kind: "String", nilable: true, default: nil, read_only: false, description: "Container's ID in the format 'docker://<container_id>'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image: {key: "image", accessor: "image", kind: "String", nilable: false, default: nil, read_only: false, description: "The image the container is running. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image_id: {key: "imageID", accessor: "image_id", kind: "String", nilable: false, default: nil, read_only: false, description: "ImageID of the container's image.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_state: {key: "lastState", accessor: "last_state", kind: "::K8S::Api::Core::V1::ContainerState", nilable: true, default: nil, read_only: false, description: "Details about the container's last termination condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ready: {key: "ready", accessor: "ready", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Specifies whether the container has passed its readiness probe.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    restart_count: {key: "restartCount", accessor: "restart_count", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    started: {key: "started", accessor: "started", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    state: {key: "state", accessor: "state", kind: "::K8S::Api::Core::V1::ContainerState", nilable: true, default: nil, read_only: false, description: "Details about the container's current condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerStatus
    k8s_object_accessor("containerID", container_id : String, true, false, "Container's ID in the format 'docker://<container_id>'.")
    k8s_object_accessor("image", image : String, false, false, "The image the container is running. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)")
    k8s_object_accessor("imageID", image_id : String, false, false, "ImageID of the container's image.")
    k8s_object_accessor("lastState", last_state : ::K8S::Api::Core::V1::ContainerState, true, false, "Details about the container's last termination condition.")
    k8s_object_accessor("name", name : String, false, false, "This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.")
    k8s_object_accessor("ready", ready : ::Bool, false, false, "Specifies whether the container has passed its readiness probe.")
    k8s_object_accessor("restartCount", restart_count : Int32, false, false, "The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.")
    k8s_object_accessor("started", started : ::Bool, true, false, "Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.")
    k8s_object_accessor("state", state : ::K8S::Api::Core::V1::ContainerState, true, false, "Details about the container's current condition.")

    def initialize(*, container_id : String? = nil, image : String? = nil, image_id : String? = nil, last_state : ::K8S::Api::Core::V1::ContainerState? = nil, name : String? = nil, ready : ::Bool? = nil, restart_count : Int32? = nil, started : ::Bool? = nil, state : ::K8S::Api::Core::V1::ContainerState? = nil)
      super()
      self.["containerID"] = container_id
      self.["image"] = image
      self.["imageID"] = image_id
      self.["lastState"] = last_state
      self.["name"] = name
      self.["ready"] = ready
      self.["restartCount"] = restart_count
      self.["started"] = started
      self.["state"] = state
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "containerID", accessor: "container_id", nilable: true, read_only: false, default: nil, kind: String},
      {key: "image", accessor: "image", nilable: false, read_only: false, default: nil, kind: String},
      {key: "imageID", accessor: "image_id", nilable: false, read_only: false, default: nil, kind: String},
      {key: "lastState", accessor: "last_state", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerState},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "ready", accessor: "ready", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "restartCount", accessor: "restart_count", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "started", accessor: "started", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "state", accessor: "state", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerState},
    ])
  end
end
