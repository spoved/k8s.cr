# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./capabilities"
require "./se_linux_options"
require "./seccomp_profile"
require "./windows_security_context_options"

::K8S::Kubernetes::Resource.define_object("SecurityContext",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "allow_privilege_escalation", kind: ::Bool, key: "allowPrivilegeEscalation", nilable: true, read_only: false, description: "AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows."},
    {name: "capabilities", kind: ::K8S::Api::Core::V1::Capabilities, key: "capabilities", nilable: true, read_only: false, description: "The capabilities to [add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.)"},
    {name: "privileged", kind: ::Bool, key: "privileged", nilable: true, read_only: false, description: "Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows."},
    {name: "proc_mount", kind: String, key: "procMount", nilable: true, read_only: false, description: "procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows."},
    {name: "read_only_root_filesystem", kind: ::Bool, key: "readOnlyRootFilesystem", nilable: true, read_only: false, description: "Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows."},
    {name: "run_as_group", kind: Int32, key: "runAsGroup", nilable: true, read_only: false, description: "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."},
    {name: "run_as_non_root", kind: ::Bool, key: "runAsNonRoot", nilable: true, read_only: false, description: "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    {name: "run_as_user", kind: Int32, key: "runAsUser", nilable: true, read_only: false, description: "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."},
    {name: "se_linux_options", kind: ::K8S::Api::Core::V1::SELinuxOptions, key: "seLinuxOptions", nilable: true, read_only: false, description: "The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."},
    {name: "seccomp_profile", kind: ::K8S::Api::Core::V1::SeccompProfile, key: "seccompProfile", nilable: true, read_only: false, description: "The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows."},
    {name: "windows_options", kind: ::K8S::Api::Core::V1::WindowsSecurityContextOptions, key: "windowsOptions", nilable: true, read_only: false, description: "The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."},

  ]
)