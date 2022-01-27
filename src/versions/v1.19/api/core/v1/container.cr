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
    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    abstract def args : ::Array(String)?
    # :ditto:
    abstract def args! : ::Array(String)
    # :ditto:
    abstract def args? : ::Array(String)?
    # :ditto:
    abstract def args=(value : ::Array(String))
    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [[https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell))
    abstract def command : ::Array(String)?
    # :ditto:
    abstract def command! : ::Array(String)
    # :ditto:
    abstract def command? : ::Array(String)?
    # :ditto:
    abstract def command=(value : ::Array(String))
    # List of environment variables to set in the container. Cannot be updated.
    abstract def env : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env! : ::Array(::K8S::Api::Core::V1::EnvVar)
    # :ditto:
    abstract def env? : ::Array(::K8S::Api::Core::V1::EnvVar)?
    # :ditto:
    abstract def env=(value : ::Array(::K8S::Api::Core::V1::EnvVar))
    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    abstract def env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from! : ::Array(::K8S::Api::Core::V1::EnvFromSource)
    # :ditto:
    abstract def env_from? : ::Array(::K8S::Api::Core::V1::EnvFromSource)?
    # :ditto:
    abstract def env_from=(value : ::Array(::K8S::Api::Core::V1::EnvFromSource))
    # Docker image name. More info: [[https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.))
    abstract def image : String?
    # :ditto:
    abstract def image! : String
    # :ditto:
    abstract def image? : String?
    # :ditto:
    abstract def image=(value : String)
    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)](https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images))
    abstract def image_pull_policy : String?
    # :ditto:
    abstract def image_pull_policy! : String
    # :ditto:
    abstract def image_pull_policy? : String?
    # :ditto:
    abstract def image_pull_policy=(value : String)
    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    abstract def lifecycle : ::K8S::Api::Core::V1::Lifecycle?
    # :ditto:
    abstract def lifecycle! : ::K8S::Api::Core::V1::Lifecycle
    # :ditto:
    abstract def lifecycle? : ::K8S::Api::Core::V1::Lifecycle?
    # :ditto:
    abstract def lifecycle=(value : ::K8S::Api::Core::V1::Lifecycle)
    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def liveness_probe : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def liveness_probe! : ::K8S::Api::Core::V1::Probe
    # :ditto:
    abstract def liveness_probe? : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def liveness_probe=(value : ::K8S::Api::Core::V1::Probe)
    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
    abstract def name : String?
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
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::ContainerPort))
    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def readiness_probe : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def readiness_probe! : ::K8S::Api::Core::V1::Probe
    # :ditto:
    abstract def readiness_probe? : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def readiness_probe=(value : ::K8S::Api::Core::V1::Probe)
    # Compute Resources required by this container. Cannot be updated. More info: [[https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/))
    abstract def resources : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources! : ::K8S::Api::Core::V1::ResourceRequirements
    # :ditto:
    abstract def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements)
    # Security options the pod should run with. More info: [[https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/))
    abstract def security_context : ::K8S::Api::Core::V1::SecurityContext?
    # :ditto:
    abstract def security_context! : ::K8S::Api::Core::V1::SecurityContext
    # :ditto:
    abstract def security_context? : ::K8S::Api::Core::V1::SecurityContext?
    # :ditto:
    abstract def security_context=(value : ::K8S::Api::Core::V1::SecurityContext)
    # StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is a beta feature enabled by the StartupProbe feature flag. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def startup_probe : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def startup_probe! : ::K8S::Api::Core::V1::Probe
    # :ditto:
    abstract def startup_probe? : ::K8S::Api::Core::V1::Probe?
    # :ditto:
    abstract def startup_probe=(value : ::K8S::Api::Core::V1::Probe)
    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    abstract def stdin : ::Bool?
    # :ditto:
    abstract def stdin! : ::Bool
    # :ditto:
    abstract def stdin? : ::Bool?
    # :ditto:
    abstract def stdin=(value : ::Bool)
    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    abstract def stdin_once : ::Bool?
    # :ditto:
    abstract def stdin_once! : ::Bool
    # :ditto:
    abstract def stdin_once? : ::Bool?
    # :ditto:
    abstract def stdin_once=(value : ::Bool)
    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [[/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)]([/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.))
    abstract def termination_message_path : String?
    # :ditto:
    abstract def termination_message_path! : String
    # :ditto:
    abstract def termination_message_path? : String?
    # :ditto:
    abstract def termination_message_path=(value : String)
    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    abstract def termination_message_policy : String?
    # :ditto:
    abstract def termination_message_policy! : String
    # :ditto:
    abstract def termination_message_policy? : String?
    # :ditto:
    abstract def termination_message_policy=(value : String)
    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    abstract def tty : ::Bool?
    # :ditto:
    abstract def tty! : ::Bool
    # :ditto:
    abstract def tty? : ::Bool?
    # :ditto:
    abstract def tty=(value : ::Bool)
    # volumeDevices is the list of block devices to be used by the container.
    abstract def volume_devices : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
    # :ditto:
    abstract def volume_devices! : ::Array(::K8S::Api::Core::V1::VolumeDevice)
    # :ditto:
    abstract def volume_devices? : ::Array(::K8S::Api::Core::V1::VolumeDevice)?
    # :ditto:
    abstract def volume_devices=(value : ::Array(::K8S::Api::Core::V1::VolumeDevice))
    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    abstract def volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts! : ::Array(::K8S::Api::Core::V1::VolumeMount)
    # :ditto:
    abstract def volume_mounts? : ::Array(::K8S::Api::Core::V1::VolumeMount)?
    # :ditto:
    abstract def volume_mounts=(value : ::Array(::K8S::Api::Core::V1::VolumeMount))
    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    abstract def working_dir : String?
    # :ditto:
    abstract def working_dir! : String
    # :ditto:
    abstract def working_dir? : String?
    # :ditto:
    abstract def working_dir=(value : String)
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
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::ContainerPort)", nilable: true, default: nil, read_only: false, description: "List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["containerPort", "protocol"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
    readiness_probe: {key: "readinessProbe", accessor: "readiness_probe", kind: "::K8S::Api::Core::V1::Probe", nilable: true, default: nil, read_only: false, description: "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::K8S::Api::Core::V1::ResourceRequirements", nilable: true, default: nil, read_only: false, description: "Compute Resources required by this container. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    security_context: {key: "securityContext", accessor: "security_context", kind: "::K8S::Api::Core::V1::SecurityContext", nilable: true, default: nil, read_only: false, description: "Security options the pod should run with. More info: [https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    startup_probe: {key: "startupProbe", accessor: "startup_probe", kind: "::K8S::Api::Core::V1::Probe", nilable: true, default: nil, read_only: false, description: "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is a beta feature enabled by the StartupProbe feature flag. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stdin: {key: "stdin", accessor: "stdin", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stdin_once: {key: "stdinOnce", accessor: "stdin_once", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_message_path: {key: "terminationMessagePath", accessor: "termination_message_path", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_message_policy: {key: "terminationMessagePolicy", accessor: "termination_message_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tty: {key: "tty", accessor: "tty", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_devices: {key: "volumeDevices", accessor: "volume_devices", kind: "::Array(::K8S::Api::Core::V1::VolumeDevice)", nilable: true, default: nil, read_only: false, description: "volumeDevices is the list of block devices to be used by the container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mounts: {key: "volumeMounts", accessor: "volume_mounts", kind: "::Array(::K8S::Api::Core::V1::VolumeMount)", nilable: true, default: nil, read_only: false, description: "Pod volumes to mount into the container's filesystem. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    working_dir: {key: "workingDir", accessor: "working_dir", kind: "String", nilable: true, default: nil, read_only: false, description: "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Container < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Container
    k8s_object_accessor("args", args : ::Array(String), true, false, "Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)")
    k8s_object_accessor("command", command : ::Array(String), true, false, "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)")
    k8s_object_accessor("env", env : ::Array(::K8S::Api::Core::V1::EnvVar), true, false, "List of environment variables to set in the container. Cannot be updated.")
    k8s_object_accessor("envFrom", env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource), true, false, "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.")
    k8s_object_accessor("image", image : String, true, false, "Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)")
    k8s_object_accessor("imagePullPolicy", image_pull_policy : String, true, false, "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)")
    k8s_object_accessor("lifecycle", lifecycle : ::K8S::Api::Core::V1::Lifecycle, true, false, "Actions that the management system should take in response to container lifecycle events. Cannot be updated.")
    k8s_object_accessor("livenessProbe", liveness_probe : ::K8S::Api::Core::V1::Probe, true, false, "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)")
    k8s_object_accessor("name", name : String, false, false, "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.")
    k8s_object_accessor("ports", ports : ::Array(::K8S::Api::Core::V1::ContainerPort), true, false, "List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated.")
    k8s_object_accessor("readinessProbe", readiness_probe : ::K8S::Api::Core::V1::Probe, true, false, "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)")
    k8s_object_accessor("resources", resources : ::K8S::Api::Core::V1::ResourceRequirements, true, false, "Compute Resources required by this container. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)")
    k8s_object_accessor("securityContext", security_context : ::K8S::Api::Core::V1::SecurityContext, true, false, "Security options the pod should run with. More info: [https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)")
    k8s_object_accessor("startupProbe", startup_probe : ::K8S::Api::Core::V1::Probe, true, false, "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is a beta feature enabled by the StartupProbe feature flag. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)")
    k8s_object_accessor("stdin", stdin : ::Bool, true, false, "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.")
    k8s_object_accessor("stdinOnce", stdin_once : ::Bool, true, false, "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false")
    k8s_object_accessor("terminationMessagePath", termination_message_path : String, true, false, "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)")
    k8s_object_accessor("terminationMessagePolicy", termination_message_policy : String, true, false, "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.")
    k8s_object_accessor("tty", tty : ::Bool, true, false, "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.")
    k8s_object_accessor("volumeDevices", volume_devices : ::Array(::K8S::Api::Core::V1::VolumeDevice), true, false, "volumeDevices is the list of block devices to be used by the container.")
    k8s_object_accessor("volumeMounts", volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount), true, false, "Pod volumes to mount into the container's filesystem. Cannot be updated.")
    k8s_object_accessor("workingDir", working_dir : String, true, false, "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.")

    def initialize(*, args : ::Array(String)? = nil, command : ::Array(String)? = nil, env : ::Array(::K8S::Api::Core::V1::EnvVar)? = nil, env_from : ::Array(::K8S::Api::Core::V1::EnvFromSource)? = nil, image : String? = nil, image_pull_policy : String? = nil, lifecycle : ::K8S::Api::Core::V1::Lifecycle? = nil, liveness_probe : ::K8S::Api::Core::V1::Probe? = nil, name : String? = nil, ports : ::Array(::K8S::Api::Core::V1::ContainerPort)? = nil, readiness_probe : ::K8S::Api::Core::V1::Probe? = nil, resources : ::K8S::Api::Core::V1::ResourceRequirements? = nil, security_context : ::K8S::Api::Core::V1::SecurityContext? = nil, startup_probe : ::K8S::Api::Core::V1::Probe? = nil, stdin : ::Bool? = nil, stdin_once : ::Bool? = nil, termination_message_path : String? = nil, termination_message_policy : String? = nil, tty : ::Bool? = nil, volume_devices : ::Array(::K8S::Api::Core::V1::VolumeDevice)? = nil, volume_mounts : ::Array(::K8S::Api::Core::V1::VolumeMount)? = nil, working_dir : String? = nil)
      super()
      self.["args"] = args
      self.["command"] = command
      self.["env"] = env
      self.["envFrom"] = env_from
      self.["image"] = image
      self.["imagePullPolicy"] = image_pull_policy
      self.["lifecycle"] = lifecycle
      self.["livenessProbe"] = liveness_probe
      self.["name"] = name
      self.["ports"] = ports
      self.["readinessProbe"] = readiness_probe
      self.["resources"] = resources
      self.["securityContext"] = security_context
      self.["startupProbe"] = startup_probe
      self.["stdin"] = stdin
      self.["stdinOnce"] = stdin_once
      self.["terminationMessagePath"] = termination_message_path
      self.["terminationMessagePolicy"] = termination_message_policy
      self.["tty"] = tty
      self.["volumeDevices"] = volume_devices
      self.["volumeMounts"] = volume_mounts
      self.["workingDir"] = working_dir
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "args", accessor: "args", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "command", accessor: "command", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "env", accessor: "env", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvVar)},
      {key: "envFrom", accessor: "env_from", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EnvFromSource)},
      {key: "image", accessor: "image", nilable: true, read_only: false, default: nil, kind: String},
      {key: "imagePullPolicy", accessor: "image_pull_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "lifecycle", accessor: "lifecycle", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Lifecycle},
      {key: "livenessProbe", accessor: "liveness_probe", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Probe},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerPort)},
      {key: "readinessProbe", accessor: "readiness_probe", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Probe},
      {key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceRequirements},
      {key: "securityContext", accessor: "security_context", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecurityContext},
      {key: "startupProbe", accessor: "startup_probe", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Probe},
      {key: "stdin", accessor: "stdin", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "stdinOnce", accessor: "stdin_once", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "terminationMessagePath", accessor: "termination_message_path", nilable: true, read_only: false, default: nil, kind: String},
      {key: "terminationMessagePolicy", accessor: "termination_message_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "tty", accessor: "tty", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "volumeDevices", accessor: "volume_devices", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeDevice)},
      {key: "volumeMounts", accessor: "volume_mounts", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::VolumeMount)},
      {key: "workingDir", accessor: "working_dir", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
