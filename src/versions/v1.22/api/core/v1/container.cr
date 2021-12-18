# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A single application container that you want to run within a pod.
  @[::K8S::Properties(
    args: {type: Array(String), nilable: true, key: "args", getter: false, setter: false},
    command: {type: Array(String), nilable: true, key: "command", getter: false, setter: false},
    env: {type: Array(Api::Core::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
    env_from: {type: Array(Api::Core::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
    image: {type: String, nilable: true, key: "image", getter: false, setter: false},
    image_pull_policy: {type: String, nilable: true, key: "imagePullPolicy", getter: false, setter: false},
    lifecycle: {type: Api::Core::V1::Lifecycle, nilable: true, key: "lifecycle", getter: false, setter: false},
    liveness_probe: {type: Api::Core::V1::Probe, nilable: true, key: "livenessProbe", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    ports: {type: Array(Api::Core::V1::ContainerPort), nilable: true, key: "ports", getter: false, setter: false},
    readiness_probe: {type: Api::Core::V1::Probe, nilable: true, key: "readinessProbe", getter: false, setter: false},
    resources: {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
    security_context: {type: Api::Core::V1::SecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
    startup_probe: {type: Api::Core::V1::Probe, nilable: true, key: "startupProbe", getter: false, setter: false},
    stdin: {type: Bool, nilable: true, key: "stdin", getter: false, setter: false},
    stdin_once: {type: Bool, nilable: true, key: "stdinOnce", getter: false, setter: false},
    termination_message_path: {type: String, nilable: true, key: "terminationMessagePath", getter: false, setter: false},
    termination_message_policy: {type: String, nilable: true, key: "terminationMessagePolicy", getter: false, setter: false},
    tty: {type: Bool, nilable: true, key: "tty", getter: false, setter: false},
    volume_devices: {type: Array(Api::Core::V1::VolumeDevice), nilable: true, key: "volumeDevices", getter: false, setter: false},
    volume_mounts: {type: Array(Api::Core::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
    working_dir: {type: String, nilable: true, key: "workingDir", getter: false, setter: false},
  )]
  class Api::Core::V1::Container
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    @[::JSON::Field(key: "args", emit_null: false)]
    @[::YAML::Field(key: "args", emit_null: false)]
    property args : Array(String) | Nil

    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    @[::JSON::Field(key: "command", emit_null: false)]
    @[::YAML::Field(key: "command", emit_null: false)]
    property command : Array(String) | Nil

    # List of environment variables to set in the container. Cannot be updated.
    @[::JSON::Field(key: "env", emit_null: false)]
    @[::YAML::Field(key: "env", emit_null: false)]
    property env : Array(Api::Core::V1::EnvVar) | Nil

    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    @[::JSON::Field(key: "envFrom", emit_null: false)]
    @[::YAML::Field(key: "envFrom", emit_null: false)]
    property env_from : Array(Api::Core::V1::EnvFromSource) | Nil

    # Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)
    @[::JSON::Field(key: "image", emit_null: false)]
    @[::YAML::Field(key: "image", emit_null: false)]
    property image : String | Nil

    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)
    @[::JSON::Field(key: "imagePullPolicy", emit_null: false)]
    @[::YAML::Field(key: "imagePullPolicy", emit_null: false)]
    property image_pull_policy : String | Nil

    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    @[::JSON::Field(key: "lifecycle", emit_null: false)]
    @[::YAML::Field(key: "lifecycle", emit_null: false)]
    property lifecycle : Api::Core::V1::Lifecycle | Nil

    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "livenessProbe", emit_null: false)]
    @[::YAML::Field(key: "livenessProbe", emit_null: false)]
    property liveness_probe : Api::Core::V1::Probe | Nil

    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.
    @[::JSON::Field(key: "ports", emit_null: false)]
    @[::YAML::Field(key: "ports", emit_null: false)]
    property ports : Array(Api::Core::V1::ContainerPort) | Nil

    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "readinessProbe", emit_null: false)]
    @[::YAML::Field(key: "readinessProbe", emit_null: false)]
    property readiness_probe : Api::Core::V1::Probe | Nil

    # Compute Resources required by this container. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)
    @[::JSON::Field(key: "resources", emit_null: false)]
    @[::YAML::Field(key: "resources", emit_null: false)]
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)
    @[::JSON::Field(key: "securityContext", emit_null: false)]
    @[::YAML::Field(key: "securityContext", emit_null: false)]
    property security_context : Api::Core::V1::SecurityContext | Nil

    # StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "startupProbe", emit_null: false)]
    @[::YAML::Field(key: "startupProbe", emit_null: false)]
    property startup_probe : Api::Core::V1::Probe | Nil

    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    @[::JSON::Field(key: "stdin", emit_null: false)]
    @[::YAML::Field(key: "stdin", emit_null: false)]
    property stdin : Bool | Nil

    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    @[::JSON::Field(key: "stdinOnce", emit_null: false)]
    @[::YAML::Field(key: "stdinOnce", emit_null: false)]
    property stdin_once : Bool | Nil

    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)
    @[::JSON::Field(key: "terminationMessagePath", emit_null: false)]
    @[::YAML::Field(key: "terminationMessagePath", emit_null: false)]
    property termination_message_path : String | Nil

    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    @[::JSON::Field(key: "terminationMessagePolicy", emit_null: false)]
    @[::YAML::Field(key: "terminationMessagePolicy", emit_null: false)]
    property termination_message_policy : String | Nil

    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    @[::JSON::Field(key: "tty", emit_null: false)]
    @[::YAML::Field(key: "tty", emit_null: false)]
    property tty : Bool | Nil

    # volumeDevices is the list of block devices to be used by the container.
    @[::JSON::Field(key: "volumeDevices", emit_null: false)]
    @[::YAML::Field(key: "volumeDevices", emit_null: false)]
    property volume_devices : Array(Api::Core::V1::VolumeDevice) | Nil

    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    @[::JSON::Field(key: "volumeMounts", emit_null: false)]
    @[::YAML::Field(key: "volumeMounts", emit_null: false)]
    property volume_mounts : Array(Api::Core::V1::VolumeMount) | Nil

    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    @[::JSON::Field(key: "workingDir", emit_null: false)]
    @[::YAML::Field(key: "workingDir", emit_null: false)]
    property working_dir : String | Nil

    def initialize(*, @name : String, @args : Array(String) | Nil = nil, @command : Array(String) | Nil = nil, @env : Array(Api::Core::V1::EnvVar) | Nil = nil, @env_from : Array(Api::Core::V1::EnvFromSource) | Nil = nil, @image : String | Nil = nil, @image_pull_policy : String | Nil = nil, @lifecycle : Api::Core::V1::Lifecycle | Nil = nil, @liveness_probe : Api::Core::V1::Probe | Nil = nil, @ports : Array(Api::Core::V1::ContainerPort) | Nil = nil, @readiness_probe : Api::Core::V1::Probe | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @security_context : Api::Core::V1::SecurityContext | Nil = nil, @startup_probe : Api::Core::V1::Probe | Nil = nil, @stdin : Bool | Nil = nil, @stdin_once : Bool | Nil = nil, @termination_message_path : String | Nil = nil, @termination_message_policy : String | Nil = nil, @tty : Bool | Nil = nil, @volume_devices : Array(Api::Core::V1::VolumeDevice) | Nil = nil, @volume_mounts : Array(Api::Core::V1::VolumeMount) | Nil = nil, @working_dir : String | Nil = nil)
    end
  end
end
