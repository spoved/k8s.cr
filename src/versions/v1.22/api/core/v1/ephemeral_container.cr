# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./env_var"
require "./env_from_source"
require "./lifecycle"
require "./probe"
require "./container_port"
require "./resource_requirements"
require "./security_context"
require "./volume_device"
require "./volume_mount"

::K8S::Kubernetes::Resource.define_object("EphemeralContainer",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "args", kind: ::Array(String), key: "args", nilable: true, read_only: false, description: "Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)"},
    {name: "command", kind: ::Array(String), key: "command", nilable: true, read_only: false, description: "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)"},
    {name: "env", kind: ::Array(::K8S::Api::Core::V1::EnvVar), key: "env", nilable: true, read_only: false, description: "List of environment variables to set in the container. Cannot be updated."},
    {name: "env_from", kind: ::Array(::K8S::Api::Core::V1::EnvFromSource), key: "envFrom", nilable: true, read_only: false, description: "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."},
    {name: "image", kind: String, key: "image", nilable: true, read_only: false, description: "Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)"},
    {name: "image_pull_policy", kind: String, key: "imagePullPolicy", nilable: true, read_only: false, description: "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)"},
    {name: "lifecycle", kind: ::K8S::Api::Core::V1::Lifecycle, key: "lifecycle", nilable: true, read_only: false, description: "Lifecycle is not allowed for ephemeral containers."},
    {name: "liveness_probe", kind: ::K8S::Api::Core::V1::Probe, key: "livenessProbe", nilable: true, read_only: false, description: "Probes are not allowed for ephemeral containers."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers."},
    {name: "ports", kind: ::Array(::K8S::Api::Core::V1::ContainerPort), key: "ports", nilable: true, read_only: false, description: "Ports are not allowed for ephemeral containers."},
    {name: "readiness_probe", kind: ::K8S::Api::Core::V1::Probe, key: "readinessProbe", nilable: true, read_only: false, description: "Probes are not allowed for ephemeral containers."},
    {name: "resources", kind: ::K8S::Api::Core::V1::ResourceRequirements, key: "resources", nilable: true, read_only: false, description: "Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod."},
    {name: "security_context", kind: ::K8S::Api::Core::V1::SecurityContext, key: "securityContext", nilable: true, read_only: false, description: "Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext."},
    {name: "startup_probe", kind: ::K8S::Api::Core::V1::Probe, key: "startupProbe", nilable: true, read_only: false, description: "Probes are not allowed for ephemeral containers."},
    {name: "stdin", kind: ::Bool, key: "stdin", nilable: true, read_only: false, description: "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."},
    {name: "stdin_once", kind: ::Bool, key: "stdinOnce", nilable: true, read_only: false, description: "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"},
    {name: "target_container_name", kind: String, key: "targetContainerName", nilable: true, read_only: false, description: "If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container is run in whatever namespaces are shared for the pod. Note that the container runtime must support this feature."},
    {name: "termination_message_path", kind: String, key: "terminationMessagePath", nilable: true, read_only: false, description: "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)"},
    {name: "termination_message_policy", kind: String, key: "terminationMessagePolicy", nilable: true, read_only: false, description: "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."},
    {name: "tty", kind: ::Bool, key: "tty", nilable: true, read_only: false, description: "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."},
    {name: "volume_devices", kind: ::Array(::K8S::Api::Core::V1::VolumeDevice), key: "volumeDevices", nilable: true, read_only: false, description: "volumeDevices is the list of block devices to be used by the container."},
    {name: "volume_mounts", kind: ::Array(::K8S::Api::Core::V1::VolumeMount), key: "volumeMounts", nilable: true, read_only: false, description: "Pod volumes to mount into the container's filesystem. Cannot be updated."},
    {name: "working_dir", kind: String, key: "workingDir", nilable: true, read_only: false, description: "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."},

  ]
)
