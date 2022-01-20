# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Container; end

require "./env_var"
require "./env_from_source"
require "./lifecycle"
require "./probe"
require "./container_port"
require "./resource_requirements"
require "./security_context"
require "./volume_device"
require "./volume_mount"

module K8S
  # Namespace holding the types for `Api::Core::V1::Container`.
  module Types::Api::Core::V1::Container
    alias ValueType = ::Array(String) | ::Array(::K8S::Api::Core::V1::EnvVar) | ::Array(::K8S::Api::Core::V1::EnvFromSource) | String | ::K8S::Api::Core::V1::Lifecycle | ::K8S::Api::Core::V1::Probe | ::Array(::K8S::Api::Core::V1::ContainerPort) | ::K8S::Api::Core::V1::ResourceRequirements | ::K8S::Api::Core::V1::SecurityContext | ::Bool | ::Array(::K8S::Api::Core::V1::VolumeDevice) | ::Array(::K8S::Api::Core::V1::VolumeMount) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    abstract def args : ::Array(String)?
    # :ditto:
    abstract def args! : ::Array(String)
    # :ditto:
    abstract def args? : ::Array(String)?
    # :ditto:
    abstract def args=(value : ::Array(String)?)
    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    abstract def command : ::Array(String)?
    # :ditto:
    abstract def command! : ::Array(String)
    # :ditto:
    abstract def command? : ::Array(String)?
    # :ditto:
    abstract def command=(value : ::Array(String)?)
    # List of environment variables to set in the container. Cannot be updated.
    abstract def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
    # :ditto:
    abstract def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar)?)
    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    abstract def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
    # :ditto:
    abstract def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    # Docker image name. More info: [[https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.))
    abstract def image : String?
    # :ditto:
    abstract def image! : String
    # :ditto:
    abstract def image? : String?
    # :ditto:
    abstract def image=(value : String?)
    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)](https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images))
    abstract def image_pull_policy : String?
    # :ditto:
    abstract def image_pull_policy! : String
    # :ditto:
    abstract def image_pull_policy? : String?
    # :ditto:
    abstract def image_pull_policy=(value : String?)
    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    abstract def lifecycle : ::K8S::Api::Core::V1::Lifecycle?
    # :ditto:
    abstract def lifecycle! : ::K8S::Api::Core::V1::Lifecycle
    # :ditto:
    abstract def lifecycle? : ::K8S::Api::Core::V1::Lifecycle?
    # :ditto:
    abstract def lifecycle=(value : ::K8S::Api::Core::V1::Lifecycle?)
    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def liveness_probe : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def liveness_probe! : ::K8S::Api::Core::V1::Probe
    # :ditto:
    abstract def liveness_probe? : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def liveness_probe=(value : ::K8S::Api::Core::V1::Probe?)
    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.
    abstract def ports : ::Array(::K8S::Api::Core::V1::ContainerPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::ContainerPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::ContainerPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::ContainerPort)?)
    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def readiness_probe : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def readiness_probe! : ::K8S::Api::Core::V1::Probe
    # :ditto:
    abstract def readiness_probe? : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def readiness_probe=(value : ::K8S::Api::Core::V1::Probe?)
    # Compute Resources required by this container. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources))
    abstract def resources : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources! : ::K8S::Api::Core::V1::ResourceRequirements
    # :ditto:
    abstract def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements?)
    # Security options the pod should run with. More info: [[https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/))
    abstract def security_context : ::K8S::Api::Core::V1::SecurityContext?
    # :ditto:
    abstract def security_context! : ::K8S::Api::Core::V1::SecurityContext
    # :ditto:
    abstract def security_context? : ::K8S::Api::Core::V1::SecurityContext?
    # :ditto:
    abstract def security_context=(value : ::K8S::Api::Core::V1::SecurityContext?)
    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    abstract def stdin : ::Bool?
    # :ditto:
    abstract def stdin! : ::Bool
    # :ditto:
    abstract def stdin? : ::Bool?
    # :ditto:
    abstract def stdin=(value : ::Bool?)
    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    abstract def stdin_once : ::Bool?
    # :ditto:
    abstract def stdin_once! : ::Bool
    # :ditto:
    abstract def stdin_once? : ::Bool?
    # :ditto:
    abstract def stdin_once=(value : ::Bool?)
    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [[/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)]([/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.))
    abstract def termination_message_path : String?
    # :ditto:
    abstract def termination_message_path! : String
    # :ditto:
    abstract def termination_message_path? : String?
    # :ditto:
    abstract def termination_message_path=(value : String?)
    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    abstract def termination_message_policy : String?
    # :ditto:
    abstract def termination_message_policy! : String
    # :ditto:
    abstract def termination_message_policy? : String?
    # :ditto:
    abstract def termination_message_policy=(value : String?)
    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    abstract def tty : ::Bool?
    # :ditto:
    abstract def tty! : ::Bool
    # :ditto:
    abstract def tty? : ::Bool?
    # :ditto:
    abstract def tty=(value : ::Bool?)
    # volumeDevices is the list of block devices to be used by the container. This is an alpha feature and may change in the future.
    abstract def volume_devices : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
    # :ditto:
    abstract def volume_devices! : ::Array(::K8S::Api::Core::V1::VolumeDevice)
    # :ditto:
    abstract def volume_devices? : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
    # :ditto:
    abstract def volume_devices=(value : ::Array(::K8S::Api::Core::V1::VolumeDevice)?)
    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    abstract def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
    # :ditto:
    abstract def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount)?)
    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    abstract def working_dir : String?
    # :ditto:
    abstract def working_dir! : String
    # :ditto:
    abstract def working_dir? : String?
    # :ditto:
    abstract def working_dir=(value : String?)
  end

  # A single application container that you want to run within a pod.
  @[::K8S::Properties(
    args: {key: "args", accessor: "args", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    command: {key: "command", accessor: "command", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    env: {key: "env", accessor: "env", kind: "::Array(::K8S::Api::Core::V1::EnvVar)", nilable: true, default: nil, read_only: false, description: "List of environment variables to set in the container. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    env_from: {key: "envFrom", accessor: "env_from", kind: "::Array(::K8S::Api::Core::V1::EnvFromSource)", nilable: true, default: nil, read_only: false, description: "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image: {key: "image", accessor: "image", kind: "String", nilable: true, default: nil, read_only: false, description: "Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image_pull_policy: {key: "imagePullPolicy", accessor: "image_pull_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    lifecycle: {key: "lifecycle", accessor: "lifecycle", kind: "::K8S::Api::Core::V1::Lifecycle", nilable: true, default: nil, read_only: false, description: "Actions that the management system should take in response to container lifecycle events. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    liveness_probe: {key: "livenessProbe", accessor: "liveness_probe", kind: "::K8S::Api::Core::V1::Probe", nilable: true, default: nil, read_only: false, description: "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::ContainerPort)", nilable: true, default: nil, read_only: false, description: "List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    readiness_probe: {key: "readinessProbe", accessor: "readiness_probe", kind: "::K8S::Api::Core::V1::Probe", nilable: true, default: nil, read_only: false, description: "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::K8S::Api::Core::V1::ResourceRequirements", nilable: true, default: nil, read_only: false, description: "Compute Resources required by this container. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    security_context: {key: "securityContext", accessor: "security_context", kind: "::K8S::Api::Core::V1::SecurityContext", nilable: true, default: nil, read_only: false, description: "Security options the pod should run with. More info: [https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stdin: {key: "stdin", accessor: "stdin", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stdin_once: {key: "stdinOnce", accessor: "stdin_once", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_message_path: {key: "terminationMessagePath", accessor: "termination_message_path", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_message_policy: {key: "terminationMessagePolicy", accessor: "termination_message_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tty: {key: "tty", accessor: "tty", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_devices: {key: "volumeDevices", accessor: "volume_devices", kind: "::Array(::K8S::Api::Core::V1::VolumeDevice)", nilable: true, default: nil, read_only: false, description: "volumeDevices is the list of block devices to be used by the container. This is an alpha feature and may change in the future.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mounts: {key: "volumeMounts", accessor: "volume_mounts", kind: "::Array(::K8S::Api::Core::V1::VolumeMount)", nilable: true, default: nil, read_only: false, description: "Pod volumes to mount into the container's filesystem. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    working_dir: {key: "workingDir", accessor: "working_dir", kind: "String", nilable: true, default: nil, read_only: false, description: "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Container < ::K8S::Types::Api::Core::V1::Container::Instance
    include ::K8S::Types::Api::Core::V1::Container
    include ::K8S::Kubernetes::Object

    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    def args : ::Array(String)?
      self.["args"].as(::Array(String)?)
    end

    # :ditto:
    def args! : ::Array(String)
      self.["args"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def args? : ::Array(String)?
      self.["args"]?.as(::Array(String)?)
    end

    # :ditto:
    def args=(value : ::Array(String)?)
      self.["args"] = value
    end

    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    def command : ::Array(String)?
      self.["command"].as(::Array(String)?)
    end

    # :ditto:
    def command! : ::Array(String)
      self.["command"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def command? : ::Array(String)?
      self.["command"]?.as(::Array(String)?)
    end

    # :ditto:
    def command=(value : ::Array(String)?)
      self.["command"] = value
    end

    # List of environment variables to set in the container. Cannot be updated.
    def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
      self.["env"].as(::Array(::K8S::Api::Core::V1::EnvVar)?)
    end

    # :ditto:
    def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
      self.["env"].as(::Array(::K8S::Api::Core::V1::EnvVar)?).not_nil!
    end

    # :ditto:
    def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
      self.["env"]?.as(::Array(::K8S::Api::Core::V1::EnvVar)?)
    end

    # :ditto:
    def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar)?)
      self.["env"] = value
    end

    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
      self.["envFrom"].as(::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    end

    # :ditto:
    def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
      self.["envFrom"].as(::Array(::K8S::Api::Core::V1::EnvFromSource)?).not_nil!
    end

    # :ditto:
    def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
      self.["envFrom"]?.as(::Array(::K8S::Api::Core::V1::EnvFromSource)?)
    end

    # :ditto:
    def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource)?)
      self.["envFrom"] = value
    end

    # Docker image name. More info: [[https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.))
    def image : String?
      self.["image"].as(String?)
    end

    # :ditto:
    def image! : String
      self.["image"].as(String?).not_nil!
    end

    # :ditto:
    def image? : String?
      self.["image"]?.as(String?)
    end

    # :ditto:
    def image=(value : String?)
      self.["image"] = value
    end

    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)](https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images))
    def image_pull_policy : String?
      self.["imagePullPolicy"].as(String?)
    end

    # :ditto:
    def image_pull_policy! : String
      self.["imagePullPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def image_pull_policy? : String?
      self.["imagePullPolicy"]?.as(String?)
    end

    # :ditto:
    def image_pull_policy=(value : String?)
      self.["imagePullPolicy"] = value
    end

    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    def lifecycle : ::K8S::Api::Core::V1::Lifecycle?
      self.["lifecycle"].as(::K8S::Api::Core::V1::Lifecycle?)
    end

    # :ditto:
    def lifecycle! : ::K8S::Api::Core::V1::Lifecycle
      self.["lifecycle"].as(::K8S::Api::Core::V1::Lifecycle?).not_nil!
    end

    # :ditto:
    def lifecycle? : ::K8S::Api::Core::V1::Lifecycle?
      self.["lifecycle"]?.as(::K8S::Api::Core::V1::Lifecycle?)
    end

    # :ditto:
    def lifecycle=(value : ::K8S::Api::Core::V1::Lifecycle?)
      self.["lifecycle"] = value
    end

    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    def liveness_probe : ::K8S::Api::Core::V1::Probe?
      self.["livenessProbe"].as(::K8S::Api::Core::V1::Probe?)
    end

    # :ditto:
    def liveness_probe! : ::K8S::Api::Core::V1::Probe
      self.["livenessProbe"].as(::K8S::Api::Core::V1::Probe?).not_nil!
    end

    # :ditto:
    def liveness_probe? : ::K8S::Api::Core::V1::Probe?
      self.["livenessProbe"]?.as(::K8S::Api::Core::V1::Probe?)
    end

    # :ditto:
    def liveness_probe=(value : ::K8S::Api::Core::V1::Probe?)
      self.["livenessProbe"] = value
    end

    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
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

    # List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.
    def ports : ::Array(::K8S::Api::Core::V1::ContainerPort)?
      self.["ports"].as(::Array(::K8S::Api::Core::V1::ContainerPort)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Core::V1::ContainerPort)
      self.["ports"].as(::Array(::K8S::Api::Core::V1::ContainerPort)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Core::V1::ContainerPort)?
      self.["ports"]?.as(::Array(::K8S::Api::Core::V1::ContainerPort)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Core::V1::ContainerPort)?)
      self.["ports"] = value
    end

    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    def readiness_probe : ::K8S::Api::Core::V1::Probe?
      self.["readinessProbe"].as(::K8S::Api::Core::V1::Probe?)
    end

    # :ditto:
    def readiness_probe! : ::K8S::Api::Core::V1::Probe
      self.["readinessProbe"].as(::K8S::Api::Core::V1::Probe?).not_nil!
    end

    # :ditto:
    def readiness_probe? : ::K8S::Api::Core::V1::Probe?
      self.["readinessProbe"]?.as(::K8S::Api::Core::V1::Probe?)
    end

    # :ditto:
    def readiness_probe=(value : ::K8S::Api::Core::V1::Probe?)
      self.["readinessProbe"] = value
    end

    # Compute Resources required by this container. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources))
    def resources : ::K8S::Api::Core::V1::ResourceRequirements?
      self.["resources"].as(::K8S::Api::Core::V1::ResourceRequirements?)
    end

    # :ditto:
    def resources! : ::K8S::Api::Core::V1::ResourceRequirements
      self.["resources"].as(::K8S::Api::Core::V1::ResourceRequirements?).not_nil!
    end

    # :ditto:
    def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
      self.["resources"]?.as(::K8S::Api::Core::V1::ResourceRequirements?)
    end

    # :ditto:
    def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements?)
      self.["resources"] = value
    end

    # Security options the pod should run with. More info: [[https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/))
    def security_context : ::K8S::Api::Core::V1::SecurityContext?
      self.["securityContext"].as(::K8S::Api::Core::V1::SecurityContext?)
    end

    # :ditto:
    def security_context! : ::K8S::Api::Core::V1::SecurityContext
      self.["securityContext"].as(::K8S::Api::Core::V1::SecurityContext?).not_nil!
    end

    # :ditto:
    def security_context? : ::K8S::Api::Core::V1::SecurityContext?
      self.["securityContext"]?.as(::K8S::Api::Core::V1::SecurityContext?)
    end

    # :ditto:
    def security_context=(value : ::K8S::Api::Core::V1::SecurityContext?)
      self.["securityContext"] = value
    end

    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    def stdin : ::Bool?
      self.["stdin"].as(::Bool?)
    end

    # :ditto:
    def stdin! : ::Bool
      self.["stdin"].as(::Bool?).not_nil!
    end

    # :ditto:
    def stdin? : ::Bool?
      self.["stdin"]?.as(::Bool?)
    end

    # :ditto:
    def stdin=(value : ::Bool?)
      self.["stdin"] = value
    end

    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    def stdin_once : ::Bool?
      self.["stdinOnce"].as(::Bool?)
    end

    # :ditto:
    def stdin_once! : ::Bool
      self.["stdinOnce"].as(::Bool?).not_nil!
    end

    # :ditto:
    def stdin_once? : ::Bool?
      self.["stdinOnce"]?.as(::Bool?)
    end

    # :ditto:
    def stdin_once=(value : ::Bool?)
      self.["stdinOnce"] = value
    end

    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [[/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)]([/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.))
    def termination_message_path : String?
      self.["terminationMessagePath"].as(String?)
    end

    # :ditto:
    def termination_message_path! : String
      self.["terminationMessagePath"].as(String?).not_nil!
    end

    # :ditto:
    def termination_message_path? : String?
      self.["terminationMessagePath"]?.as(String?)
    end

    # :ditto:
    def termination_message_path=(value : String?)
      self.["terminationMessagePath"] = value
    end

    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    def termination_message_policy : String?
      self.["terminationMessagePolicy"].as(String?)
    end

    # :ditto:
    def termination_message_policy! : String
      self.["terminationMessagePolicy"].as(String?).not_nil!
    end

    # :ditto:
    def termination_message_policy? : String?
      self.["terminationMessagePolicy"]?.as(String?)
    end

    # :ditto:
    def termination_message_policy=(value : String?)
      self.["terminationMessagePolicy"] = value
    end

    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    def tty : ::Bool?
      self.["tty"].as(::Bool?)
    end

    # :ditto:
    def tty! : ::Bool
      self.["tty"].as(::Bool?).not_nil!
    end

    # :ditto:
    def tty? : ::Bool?
      self.["tty"]?.as(::Bool?)
    end

    # :ditto:
    def tty=(value : ::Bool?)
      self.["tty"] = value
    end

    # volumeDevices is the list of block devices to be used by the container. This is an alpha feature and may change in the future.
    def volume_devices : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
      self.["volumeDevices"].as(::Array(::K8S::Api::Core::V1::VolumeDevice)?)
    end

    # :ditto:
    def volume_devices! : ::Array(::K8S::Api::Core::V1::VolumeDevice)
      self.["volumeDevices"].as(::Array(::K8S::Api::Core::V1::VolumeDevice)?).not_nil!
    end

    # :ditto:
    def volume_devices? : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
      self.["volumeDevices"]?.as(::Array(::K8S::Api::Core::V1::VolumeDevice)?)
    end

    # :ditto:
    def volume_devices=(value : ::Array(::K8S::Api::Core::V1::VolumeDevice)?)
      self.["volumeDevices"] = value
    end

    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
      self.["volumeMounts"].as(::Array(::K8S::Api::Core::V1::VolumeMount)?)
    end

    # :ditto:
    def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
      self.["volumeMounts"].as(::Array(::K8S::Api::Core::V1::VolumeMount)?).not_nil!
    end

    # :ditto:
    def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
      self.["volumeMounts"]?.as(::Array(::K8S::Api::Core::V1::VolumeMount)?)
    end

    # :ditto:
    def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount)?)
      self.["volumeMounts"] = value
    end

    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    def working_dir : String?
      self.["workingDir"].as(String?)
    end

    # :ditto:
    def working_dir! : String
      self.["workingDir"].as(String?).not_nil!
    end

    # :ditto:
    def working_dir? : String?
      self.["workingDir"]?.as(String?)
    end

    # :ditto:
    def working_dir=(value : String?)
      self.["workingDir"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "args", accessor: "args", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "command", accessor: "command", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "env", accessor: "env", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvVar) },
        { key: "envFrom", accessor: "env_from", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvFromSource) },
        { key: "image", accessor: "image", nilable: true, read_only: false, default: nil, kind: String },
        { key: "imagePullPolicy", accessor: "image_pull_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "lifecycle", accessor: "lifecycle", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Lifecycle },
        { key: "livenessProbe", accessor: "liveness_probe", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Probe },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerPort) },
        { key: "readinessProbe", accessor: "readiness_probe", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Probe },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceRequirements },
        { key: "securityContext", accessor: "security_context", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecurityContext },
        { key: "stdin", accessor: "stdin", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "stdinOnce", accessor: "stdin_once", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "terminationMessagePath", accessor: "termination_message_path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "terminationMessagePolicy", accessor: "termination_message_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "tty", accessor: "tty", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "volumeDevices", accessor: "volume_devices", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeDevice) },
        { key: "volumeMounts", accessor: "volume_mounts", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeMount) },
        { key: "workingDir", accessor: "working_dir", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
