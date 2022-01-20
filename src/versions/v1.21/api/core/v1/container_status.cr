# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStatus; end

require "./container_state"

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStatus`.
  module Types::Api::Core::V1::ContainerStatus
    alias ValueType = String | ::K8S::Api::Core::V1::ContainerState | ::Bool | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Container's ID in the format 'docker://<container_id>'.
    abstract def container_id : String?
    # :ditto:
    abstract def container_id! : String
    # :ditto:
    abstract def container_id? : String?
    # :ditto:
    abstract def container_id=(value : String?)
    # The image the container is running. More info: [[https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)](https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images))
    abstract def image : String
    # :ditto:
    abstract def image! : String
    # :ditto:
    abstract def image? : String?
    # :ditto:
    abstract def image=(value : String)
    # ImageID of the container's image.
    abstract def image_id : String
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
    abstract def last_state=(value : ::K8S::Api::Core::V1::ContainerState?)
    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Specifies whether the container has passed its readiness probe.
    abstract def ready : ::Bool
    # :ditto:
    abstract def ready! : ::Bool
    # :ditto:
    abstract def ready? : ::Bool?
    # :ditto:
    abstract def ready=(value : ::Bool)
    # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
    abstract def restart_count : Int32
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
    abstract def started=(value : ::Bool?)
    # Details about the container's current condition.
    abstract def state : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def state! : ::K8S::Api::Core::V1::ContainerState
    # :ditto:
    abstract def state? : ::K8S::Api::Core::V1::ContainerState?
    # :ditto:
    abstract def state=(value : ::K8S::Api::Core::V1::ContainerState?)
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
  class Api::Core::V1::ContainerStatus < ::K8S::Types::Api::Core::V1::ContainerStatus::Instance
    include ::K8S::Types::Api::Core::V1::ContainerStatus
    include ::K8S::Kubernetes::Object

    # Container's ID in the format 'docker://<container_id>'.
    def container_id : String?
      self.["containerID"].as(String?)
    end

    # :ditto:
    def container_id! : String
      self.["containerID"].as(String?).not_nil!
    end

    # :ditto:
    def container_id? : String?
      self.["containerID"]?.as(String?)
    end

    # :ditto:
    def container_id=(value : String?)
      self.["containerID"] = value
    end

    # The image the container is running. More info: [[https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)](https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images))
    def image : String
      self.["image"].as(String)
    end

    # :ditto:
    def image! : String
      self.["image"].as(String).not_nil!
    end

    # :ditto:
    def image? : String?
      self.["image"]?.as(String?)
    end

    # :ditto:
    def image=(value : String)
      self.["image"] = value
    end

    # ImageID of the container's image.
    def image_id : String
      self.["imageID"].as(String)
    end

    # :ditto:
    def image_id! : String
      self.["imageID"].as(String).not_nil!
    end

    # :ditto:
    def image_id? : String?
      self.["imageID"]?.as(String?)
    end

    # :ditto:
    def image_id=(value : String)
      self.["imageID"] = value
    end

    # Details about the container's last termination condition.
    def last_state : ::K8S::Api::Core::V1::ContainerState?
      self.["lastState"].as(::K8S::Api::Core::V1::ContainerState?)
    end

    # :ditto:
    def last_state! : ::K8S::Api::Core::V1::ContainerState
      self.["lastState"].as(::K8S::Api::Core::V1::ContainerState?).not_nil!
    end

    # :ditto:
    def last_state? : ::K8S::Api::Core::V1::ContainerState?
      self.["lastState"]?.as(::K8S::Api::Core::V1::ContainerState?)
    end

    # :ditto:
    def last_state=(value : ::K8S::Api::Core::V1::ContainerState?)
      self.["lastState"] = value
    end

    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Specifies whether the container has passed its readiness probe.
    def ready : ::Bool
      self.["ready"].as(::Bool)
    end

    # :ditto:
    def ready! : ::Bool
      self.["ready"].as(::Bool).not_nil!
    end

    # :ditto:
    def ready? : ::Bool?
      self.["ready"]?.as(::Bool?)
    end

    # :ditto:
    def ready=(value : ::Bool)
      self.["ready"] = value
    end

    # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
    def restart_count : Int32
      self.["restartCount"].as(Int32)
    end

    # :ditto:
    def restart_count! : Int32
      self.["restartCount"].as(Int32).not_nil!
    end

    # :ditto:
    def restart_count? : Int32?
      self.["restartCount"]?.as(Int32?)
    end

    # :ditto:
    def restart_count=(value : Int32)
      self.["restartCount"] = value
    end

    # Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
    def started : ::Bool?
      self.["started"].as(::Bool?)
    end

    # :ditto:
    def started! : ::Bool
      self.["started"].as(::Bool?).not_nil!
    end

    # :ditto:
    def started? : ::Bool?
      self.["started"]?.as(::Bool?)
    end

    # :ditto:
    def started=(value : ::Bool?)
      self.["started"] = value
    end

    # Details about the container's current condition.
    def state : ::K8S::Api::Core::V1::ContainerState?
      self.["state"].as(::K8S::Api::Core::V1::ContainerState?)
    end

    # :ditto:
    def state! : ::K8S::Api::Core::V1::ContainerState
      self.["state"].as(::K8S::Api::Core::V1::ContainerState?).not_nil!
    end

    # :ditto:
    def state? : ::K8S::Api::Core::V1::ContainerState?
      self.["state"]?.as(::K8S::Api::Core::V1::ContainerState?)
    end

    # :ditto:
    def state=(value : ::K8S::Api::Core::V1::ContainerState?)
      self.["state"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "containerID", accessor: "container_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "image", accessor: "image", nilable: false, read_only: false, default: nil, kind: String },
        { key: "imageID", accessor: "image_id", nilable: false, read_only: false, default: nil, kind: String },
        { key: "lastState", accessor: "last_state", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerState },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "ready", accessor: "ready", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "restartCount", accessor: "restart_count", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "started", accessor: "started", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "state", accessor: "state", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerState },
      ])
end
  end
end
