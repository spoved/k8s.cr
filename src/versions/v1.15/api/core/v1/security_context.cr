# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecurityContext; end

require "./capabilities"
require "./se_linux_options"
require "./windows_security_context_options"

module K8S
  # Namespace holding the types for `Api::Core::V1::SecurityContext`.
  module Types::Api::Core::V1::SecurityContext
    alias ValueType = ::Bool | ::K8S::Api::Core::V1::Capabilities | String | Int32 | ::K8S::Api::Core::V1::SELinuxOptions | ::K8S::Api::Core::V1::WindowsSecurityContextOptions | Nil
    alias Instance = ::K8S::Object(ValueType)

    # AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN
    abstract def allow_privilege_escalation : ::Bool?
    # :ditto:
    abstract def allow_privilege_escalation! : ::Bool
    # :ditto:
    abstract def allow_privilege_escalation? : ::Bool?
    # :ditto:
    abstract def allow_privilege_escalation=(value : ::Bool?)
    # The capabilities to [[add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.)]([add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.))
    abstract def capabilities : ::K8S::Api::Core::V1::Capabilities?
    # :ditto:
    abstract def capabilities! : ::K8S::Api::Core::V1::Capabilities
    # :ditto:
    abstract def capabilities? : ::K8S::Api::Core::V1::Capabilities?
    # :ditto:
    abstract def capabilities=(value : ::K8S::Api::Core::V1::Capabilities?)
    # Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
    abstract def privileged : ::Bool?
    # :ditto:
    abstract def privileged! : ::Bool
    # :ditto:
    abstract def privileged? : ::Bool?
    # :ditto:
    abstract def privileged=(value : ::Bool?)
    # procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.
    abstract def proc_mount : String?
    # :ditto:
    abstract def proc_mount! : String
    # :ditto:
    abstract def proc_mount? : String?
    # :ditto:
    abstract def proc_mount=(value : String?)
    # Whether this container has a read-only root filesystem. Default is false.
    abstract def read_only_root_filesystem : ::Bool?
    # :ditto:
    abstract def read_only_root_filesystem! : ::Bool
    # :ditto:
    abstract def read_only_root_filesystem? : ::Bool?
    # :ditto:
    abstract def read_only_root_filesystem=(value : ::Bool?)
    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_group : Int32?
    # :ditto:
    abstract def run_as_group! : Int32
    # :ditto:
    abstract def run_as_group? : Int32?
    # :ditto:
    abstract def run_as_group=(value : Int32?)
    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_non_root : ::Bool?
    # :ditto:
    abstract def run_as_non_root! : ::Bool
    # :ditto:
    abstract def run_as_non_root? : ::Bool?
    # :ditto:
    abstract def run_as_non_root=(value : ::Bool?)
    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_user : Int32?
    # :ditto:
    abstract def run_as_user! : Int32
    # :ditto:
    abstract def run_as_user? : Int32?
    # :ditto:
    abstract def run_as_user=(value : Int32?)
    # The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def se_linux_options : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options! : ::K8S::Api::Core::V1::SELinuxOptions
    # :ditto:
    abstract def se_linux_options? : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options=(value : ::K8S::Api::Core::V1::SELinuxOptions?)
    # Windows security options.
    abstract def windows_options : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
    # :ditto:
    abstract def windows_options! : ::K8S::Api::Core::V1::WindowsSecurityContextOptions
    # :ditto:
    abstract def windows_options? : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
    # :ditto:
    abstract def windows_options=(value : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?)
  end

  # SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
  @[::K8S::Properties(
    allow_privilege_escalation: {key: "allowPrivilegeEscalation", accessor: "allow_privilege_escalation", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN"},
    capabilities: {key: "capabilities", accessor: "capabilities", kind: "::K8S::Api::Core::V1::Capabilities", nilable: true, default: nil, read_only: false, description: "The capabilities to [add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.)"},
    privileged: {key: "privileged", accessor: "privileged", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false."},
    proc_mount: {key: "procMount", accessor: "proc_mount", kind: "String", nilable: true, default: nil, read_only: false, description: "procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled."},
    read_only_root_filesystem: {key: "readOnlyRootFilesystem", accessor: "read_only_root_filesystem", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Whether this container has a read-only root filesystem. Default is false."},
    run_as_group: {key: "runAsGroup", accessor: "run_as_group", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    run_as_non_root: {key: "runAsNonRoot", accessor: "run_as_non_root", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    run_as_user: {key: "runAsUser", accessor: "run_as_user", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    se_linux_options: {key: "seLinuxOptions", accessor: "se_linux_options", kind: "::K8S::Api::Core::V1::SELinuxOptions", nilable: true, default: nil, read_only: false, description: "The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    windows_options: {key: "windowsOptions", accessor: "windows_options", kind: "::K8S::Api::Core::V1::WindowsSecurityContextOptions", nilable: true, default: nil, read_only: false, description: "Windows security options."},
  )]
  class Api::Core::V1::SecurityContext < ::K8S::Types::Api::Core::V1::SecurityContext::Instance
    include ::K8S::Types::Api::Core::V1::SecurityContext
    include ::K8S::Kubernetes::Object

    # AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN
    def allow_privilege_escalation : ::Bool?
      self.["allowPrivilegeEscalation"].as(::Bool?)
    end

    # :ditto:
    def allow_privilege_escalation! : ::Bool
      self.["allowPrivilegeEscalation"].as(::Bool?).not_nil!
    end

    # :ditto:
    def allow_privilege_escalation? : ::Bool?
      self.["allowPrivilegeEscalation"]?.as(::Bool?)
    end

    # :ditto:
    def allow_privilege_escalation=(value : ::Bool?)
      self.["allowPrivilegeEscalation"] = value
    end

    # The capabilities to [[add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.)]([add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.))
    def capabilities : ::K8S::Api::Core::V1::Capabilities?
      self.["capabilities"].as(::K8S::Api::Core::V1::Capabilities?)
    end

    # :ditto:
    def capabilities! : ::K8S::Api::Core::V1::Capabilities
      self.["capabilities"].as(::K8S::Api::Core::V1::Capabilities?).not_nil!
    end

    # :ditto:
    def capabilities? : ::K8S::Api::Core::V1::Capabilities?
      self.["capabilities"]?.as(::K8S::Api::Core::V1::Capabilities?)
    end

    # :ditto:
    def capabilities=(value : ::K8S::Api::Core::V1::Capabilities?)
      self.["capabilities"] = value
    end

    # Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
    def privileged : ::Bool?
      self.["privileged"].as(::Bool?)
    end

    # :ditto:
    def privileged! : ::Bool
      self.["privileged"].as(::Bool?).not_nil!
    end

    # :ditto:
    def privileged? : ::Bool?
      self.["privileged"]?.as(::Bool?)
    end

    # :ditto:
    def privileged=(value : ::Bool?)
      self.["privileged"] = value
    end

    # procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.
    def proc_mount : String?
      self.["procMount"].as(String?)
    end

    # :ditto:
    def proc_mount! : String
      self.["procMount"].as(String?).not_nil!
    end

    # :ditto:
    def proc_mount? : String?
      self.["procMount"]?.as(String?)
    end

    # :ditto:
    def proc_mount=(value : String?)
      self.["procMount"] = value
    end

    # Whether this container has a read-only root filesystem. Default is false.
    def read_only_root_filesystem : ::Bool?
      self.["readOnlyRootFilesystem"].as(::Bool?)
    end

    # :ditto:
    def read_only_root_filesystem! : ::Bool
      self.["readOnlyRootFilesystem"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only_root_filesystem? : ::Bool?
      self.["readOnlyRootFilesystem"]?.as(::Bool?)
    end

    # :ditto:
    def read_only_root_filesystem=(value : ::Bool?)
      self.["readOnlyRootFilesystem"] = value
    end

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    def run_as_group : Int32?
      self.["runAsGroup"].as(Int32?)
    end

    # :ditto:
    def run_as_group! : Int32
      self.["runAsGroup"].as(Int32?).not_nil!
    end

    # :ditto:
    def run_as_group? : Int32?
      self.["runAsGroup"]?.as(Int32?)
    end

    # :ditto:
    def run_as_group=(value : Int32?)
      self.["runAsGroup"] = value
    end

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    def run_as_non_root : ::Bool?
      self.["runAsNonRoot"].as(::Bool?)
    end

    # :ditto:
    def run_as_non_root! : ::Bool
      self.["runAsNonRoot"].as(::Bool?).not_nil!
    end

    # :ditto:
    def run_as_non_root? : ::Bool?
      self.["runAsNonRoot"]?.as(::Bool?)
    end

    # :ditto:
    def run_as_non_root=(value : ::Bool?)
      self.["runAsNonRoot"] = value
    end

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    def run_as_user : Int32?
      self.["runAsUser"].as(Int32?)
    end

    # :ditto:
    def run_as_user! : Int32
      self.["runAsUser"].as(Int32?).not_nil!
    end

    # :ditto:
    def run_as_user? : Int32?
      self.["runAsUser"]?.as(Int32?)
    end

    # :ditto:
    def run_as_user=(value : Int32?)
      self.["runAsUser"] = value
    end

    # The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    def se_linux_options : ::K8S::Api::Core::V1::SELinuxOptions?
      self.["seLinuxOptions"].as(::K8S::Api::Core::V1::SELinuxOptions?)
    end

    # :ditto:
    def se_linux_options! : ::K8S::Api::Core::V1::SELinuxOptions
      self.["seLinuxOptions"].as(::K8S::Api::Core::V1::SELinuxOptions?).not_nil!
    end

    # :ditto:
    def se_linux_options? : ::K8S::Api::Core::V1::SELinuxOptions?
      self.["seLinuxOptions"]?.as(::K8S::Api::Core::V1::SELinuxOptions?)
    end

    # :ditto:
    def se_linux_options=(value : ::K8S::Api::Core::V1::SELinuxOptions?)
      self.["seLinuxOptions"] = value
    end

    # Windows security options.
    def windows_options : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
      self.["windowsOptions"].as(::K8S::Api::Core::V1::WindowsSecurityContextOptions?)
    end

    # :ditto:
    def windows_options! : ::K8S::Api::Core::V1::WindowsSecurityContextOptions
      self.["windowsOptions"].as(::K8S::Api::Core::V1::WindowsSecurityContextOptions?).not_nil!
    end

    # :ditto:
    def windows_options? : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
      self.["windowsOptions"]?.as(::K8S::Api::Core::V1::WindowsSecurityContextOptions?)
    end

    # :ditto:
    def windows_options=(value : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?)
      self.["windowsOptions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "allowPrivilegeEscalation", accessor: "allow_privilege_escalation", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "capabilities", accessor: "capabilities", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Capabilities },
        { key: "privileged", accessor: "privileged", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "procMount", accessor: "proc_mount", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnlyRootFilesystem", accessor: "read_only_root_filesystem", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "runAsGroup", accessor: "run_as_group", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "runAsNonRoot", accessor: "run_as_non_root", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "runAsUser", accessor: "run_as_user", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "seLinuxOptions", accessor: "se_linux_options", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SELinuxOptions },
        { key: "windowsOptions", accessor: "windows_options", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::WindowsSecurityContextOptions },
      ])
end
  end
end
