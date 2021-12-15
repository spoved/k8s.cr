# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
  @[::K8S::Properties(
    allow_privilege_escalation: {type: Bool, nilable: true, key: "allowPrivilegeEscalation", getter: false, setter: false},
    capabilities: {type: Api::Core::V1::Capabilities, nilable: true, key: "capabilities", getter: false, setter: false},
    privileged: {type: Bool, nilable: true, key: "privileged", getter: false, setter: false},
    proc_mount: {type: String, nilable: true, key: "procMount", getter: false, setter: false},
    read_only_root_filesystem: {type: Bool, nilable: true, key: "readOnlyRootFilesystem", getter: false, setter: false},
    run_as_group: {type: Int32, nilable: true, key: "runAsGroup", getter: false, setter: false},
    run_as_non_root: {type: Bool, nilable: true, key: "runAsNonRoot", getter: false, setter: false},
    run_as_user: {type: Int32, nilable: true, key: "runAsUser", getter: false, setter: false},
    se_linux_options: {type: Api::Core::V1::SELinuxOptions, nilable: true, key: "seLinuxOptions", getter: false, setter: false},
    seccomp_profile: {type: Api::Core::V1::SeccompProfile, nilable: true, key: "seccompProfile", getter: false, setter: false},
    windows_options: {type: Api::Core::V1::WindowsSecurityContextOptions, nilable: true, key: "windowsOptions", getter: false, setter: false},
  )]
  class Api::Core::V1::SecurityContext
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "allowPrivilegeEscalation", emit_null: false)]
    @[::YAML::Field(key: "allowPrivilegeEscalation", emit_null: false)]
    property allow_privilege_escalation : Bool | Nil

    # The capabilities to [add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.)
    @[::JSON::Field(key: "capabilities", emit_null: false)]
    @[::YAML::Field(key: "capabilities", emit_null: false)]
    property capabilities : Api::Core::V1::Capabilities | Nil

    # Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "privileged", emit_null: false)]
    @[::YAML::Field(key: "privileged", emit_null: false)]
    property privileged : Bool | Nil

    # procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "procMount", emit_null: false)]
    @[::YAML::Field(key: "procMount", emit_null: false)]
    property proc_mount : String | Nil

    # Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "readOnlyRootFilesystem", emit_null: false)]
    @[::YAML::Field(key: "readOnlyRootFilesystem", emit_null: false)]
    property read_only_root_filesystem : Bool | Nil

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "runAsGroup", emit_null: false)]
    @[::YAML::Field(key: "runAsGroup", emit_null: false)]
    property run_as_group : Int32 | Nil

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "runAsNonRoot", emit_null: false)]
    @[::YAML::Field(key: "runAsNonRoot", emit_null: false)]
    property run_as_non_root : Bool | Nil

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "runAsUser", emit_null: false)]
    @[::YAML::Field(key: "runAsUser", emit_null: false)]
    property run_as_user : Int32 | Nil

    # The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "seLinuxOptions", emit_null: false)]
    @[::YAML::Field(key: "seLinuxOptions", emit_null: false)]
    property se_linux_options : Api::Core::V1::SELinuxOptions | Nil

    # The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows.
    @[::JSON::Field(key: "seccompProfile", emit_null: false)]
    @[::YAML::Field(key: "seccompProfile", emit_null: false)]
    property seccomp_profile : Api::Core::V1::SeccompProfile | Nil

    # The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
    @[::JSON::Field(key: "windowsOptions", emit_null: false)]
    @[::YAML::Field(key: "windowsOptions", emit_null: false)]
    property windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil

    def initialize(*, @allow_privilege_escalation : Bool | Nil = nil, @capabilities : Api::Core::V1::Capabilities | Nil = nil, @privileged : Bool | Nil = nil, @proc_mount : String | Nil = nil, @read_only_root_filesystem : Bool | Nil = nil, @run_as_group : Int32 | Nil = nil, @run_as_non_root : Bool | Nil = nil, @run_as_user : Int32 | Nil = nil, @se_linux_options : Api::Core::V1::SELinuxOptions | Nil = nil, @seccomp_profile : Api::Core::V1::SeccompProfile | Nil = nil, @windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil = nil)
    end
  end
end
