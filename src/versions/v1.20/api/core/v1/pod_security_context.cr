# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodSecurityContext; end

require "./se_linux_options"
require "./seccomp_profile"
require "./sysctl"
require "./windows_security_context_options"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodSecurityContext`.
  module Types::Api::Core::V1::PodSecurityContext
    alias ValueType = Int32 | String | ::Bool | ::K8S::Api::Core::V1::SELinuxOptions | ::K8S::Api::Core::V1::SeccompProfile | ::Array(Int32) | ::Array(::K8S::Api::Core::V1::Sysctl) | ::K8S::Api::Core::V1::WindowsSecurityContextOptions | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
    #
    # 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    #
    # If unset, the Kubelet will not modify the ownership and permissions of any volume.
    abstract def fs_group : Int32?
    # :ditto:
    abstract def fs_group! : Int32
    # :ditto:
    abstract def fs_group? : Int32?
    # :ditto:
    abstract def fs_group=(value : Int32?)
    # fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used.
    abstract def fs_group_change_policy : String?
    # :ditto:
    abstract def fs_group_change_policy! : String
    # :ditto:
    abstract def fs_group_change_policy? : String?
    # :ditto:
    abstract def fs_group_change_policy=(value : String?)
    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    abstract def run_as_group : Int32?
    # :ditto:
    abstract def run_as_group! : Int32
    # :ditto:
    abstract def run_as_group? : Int32?
    # :ditto:
    abstract def run_as_group=(value : Int32?)
    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_non_root : ::Bool?
    # :ditto:
    abstract def run_as_non_root! : ::Bool
    # :ditto:
    abstract def run_as_non_root? : ::Bool?
    # :ditto:
    abstract def run_as_non_root=(value : ::Bool?)
    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    abstract def run_as_user : Int32?
    # :ditto:
    abstract def run_as_user! : Int32
    # :ditto:
    abstract def run_as_user? : Int32?
    # :ditto:
    abstract def run_as_user=(value : Int32?)
    # The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    abstract def se_linux_options : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options! : ::K8S::Api::Core::V1::SELinuxOptions
    # :ditto:
    abstract def se_linux_options? : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options=(value : ::K8S::Api::Core::V1::SELinuxOptions?)
    # The seccomp options to use by the containers in this pod.
    abstract def seccomp_profile : ::K8S::Api::Core::V1::SeccompProfile?
    # :ditto:
    abstract def seccomp_profile! : ::K8S::Api::Core::V1::SeccompProfile
    # :ditto:
    abstract def seccomp_profile? : ::K8S::Api::Core::V1::SeccompProfile?
    # :ditto:
    abstract def seccomp_profile=(value : ::K8S::Api::Core::V1::SeccompProfile?)
    # A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.
    abstract def supplemental_groups : ::Array(Int32)?
    # :ditto:
    abstract def supplemental_groups! : ::Array(Int32)
    # :ditto:
    abstract def supplemental_groups? : ::Array(Int32)?
    # :ditto:
    abstract def supplemental_groups=(value : ::Array(Int32)?)
    # Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.
    abstract def sysctls : ::Array(::K8S::Api::Core::V1::Sysctl)?
    # :ditto:
    abstract def sysctls! : ::Array(::K8S::Api::Core::V1::Sysctl)
    # :ditto:
    abstract def sysctls? : ::Array(::K8S::Api::Core::V1::Sysctl)?
    # :ditto:
    abstract def sysctls=(value : ::Array(::K8S::Api::Core::V1::Sysctl)?)
    # The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def windows_options : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
    # :ditto:
    abstract def windows_options! : ::K8S::Api::Core::V1::WindowsSecurityContextOptions
    # :ditto:
    abstract def windows_options? : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?
    # :ditto:
    abstract def windows_options=(value : ::K8S::Api::Core::V1::WindowsSecurityContextOptions?)
  end

  # PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
  @[::K8S::Properties(
    fs_group: {key: "fsGroup", accessor: "fs_group", kind: "Int32", nilable: true, default: nil, read_only: false, description: "A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:\n\n1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----\n\nIf unset, the Kubelet will not modify the ownership and permissions of any volume."},
    fs_group_change_policy: {key: "fsGroupChangePolicy", accessor: "fs_group_change_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used."},
    run_as_group: {key: "runAsGroup", accessor: "run_as_group", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    run_as_non_root: {key: "runAsNonRoot", accessor: "run_as_non_root", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    run_as_user: {key: "runAsUser", accessor: "run_as_user", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    se_linux_options: {key: "seLinuxOptions", accessor: "se_linux_options", kind: "::K8S::Api::Core::V1::SELinuxOptions", nilable: true, default: nil, read_only: false, description: "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    seccomp_profile: {key: "seccompProfile", accessor: "seccomp_profile", kind: "::K8S::Api::Core::V1::SeccompProfile", nilable: true, default: nil, read_only: false, description: "The seccomp options to use by the containers in this pod."},
    supplemental_groups: {key: "supplementalGroups", accessor: "supplemental_groups", kind: "::Array(Int32)", nilable: true, default: nil, read_only: false, description: "A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container."},
    sysctls: {key: "sysctls", accessor: "sysctls", kind: "::Array(::K8S::Api::Core::V1::Sysctl)", nilable: true, default: nil, read_only: false, description: "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch."},
    windows_options: {key: "windowsOptions", accessor: "windows_options", kind: "::K8S::Api::Core::V1::WindowsSecurityContextOptions", nilable: true, default: nil, read_only: false, description: "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
  )]
  class Api::Core::V1::PodSecurityContext < ::K8S::Types::Api::Core::V1::PodSecurityContext::Instance
    include ::K8S::Types::Api::Core::V1::PodSecurityContext
    include ::K8S::Kubernetes::Object

    # A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
    #
    # 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    #
    # If unset, the Kubelet will not modify the ownership and permissions of any volume.
    def fs_group : Int32?
      self.["fsGroup"].as(Int32?)
    end

    # :ditto:
    def fs_group! : Int32
      self.["fsGroup"].as(Int32?).not_nil!
    end

    # :ditto:
    def fs_group? : Int32?
      self.["fsGroup"]?.as(Int32?)
    end

    # :ditto:
    def fs_group=(value : Int32?)
      self.["fsGroup"] = value
    end

    # fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used.
    def fs_group_change_policy : String?
      self.["fsGroupChangePolicy"].as(String?)
    end

    # :ditto:
    def fs_group_change_policy! : String
      self.["fsGroupChangePolicy"].as(String?).not_nil!
    end

    # :ditto:
    def fs_group_change_policy? : String?
      self.["fsGroupChangePolicy"]?.as(String?)
    end

    # :ditto:
    def fs_group_change_policy=(value : String?)
      self.["fsGroupChangePolicy"] = value
    end

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
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

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
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

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
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

    # The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
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

    # The seccomp options to use by the containers in this pod.
    def seccomp_profile : ::K8S::Api::Core::V1::SeccompProfile?
      self.["seccompProfile"].as(::K8S::Api::Core::V1::SeccompProfile?)
    end

    # :ditto:
    def seccomp_profile! : ::K8S::Api::Core::V1::SeccompProfile
      self.["seccompProfile"].as(::K8S::Api::Core::V1::SeccompProfile?).not_nil!
    end

    # :ditto:
    def seccomp_profile? : ::K8S::Api::Core::V1::SeccompProfile?
      self.["seccompProfile"]?.as(::K8S::Api::Core::V1::SeccompProfile?)
    end

    # :ditto:
    def seccomp_profile=(value : ::K8S::Api::Core::V1::SeccompProfile?)
      self.["seccompProfile"] = value
    end

    # A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.
    def supplemental_groups : ::Array(Int32)?
      self.["supplementalGroups"].as(::Array(Int32)?)
    end

    # :ditto:
    def supplemental_groups! : ::Array(Int32)
      self.["supplementalGroups"].as(::Array(Int32)?).not_nil!
    end

    # :ditto:
    def supplemental_groups? : ::Array(Int32)?
      self.["supplementalGroups"]?.as(::Array(Int32)?)
    end

    # :ditto:
    def supplemental_groups=(value : ::Array(Int32)?)
      self.["supplementalGroups"] = value
    end

    # Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.
    def sysctls : ::Array(::K8S::Api::Core::V1::Sysctl)?
      self.["sysctls"].as(::Array(::K8S::Api::Core::V1::Sysctl)?)
    end

    # :ditto:
    def sysctls! : ::Array(::K8S::Api::Core::V1::Sysctl)
      self.["sysctls"].as(::Array(::K8S::Api::Core::V1::Sysctl)?).not_nil!
    end

    # :ditto:
    def sysctls? : ::Array(::K8S::Api::Core::V1::Sysctl)?
      self.["sysctls"]?.as(::Array(::K8S::Api::Core::V1::Sysctl)?)
    end

    # :ditto:
    def sysctls=(value : ::Array(::K8S::Api::Core::V1::Sysctl)?)
      self.["sysctls"] = value
    end

    # The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
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
        { key: "fsGroup", accessor: "fs_group", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "fsGroupChangePolicy", accessor: "fs_group_change_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "runAsGroup", accessor: "run_as_group", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "runAsNonRoot", accessor: "run_as_non_root", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "runAsUser", accessor: "run_as_user", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "seLinuxOptions", accessor: "se_linux_options", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SELinuxOptions },
        { key: "seccompProfile", accessor: "seccomp_profile", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SeccompProfile },
        { key: "supplementalGroups", accessor: "supplemental_groups", nilable: true, read_only: false, default: nil, kind: ::Array(Int32) },
        { key: "sysctls", accessor: "sysctls", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Sysctl) },
        { key: "windowsOptions", accessor: "windows_options", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::WindowsSecurityContextOptions },
      ])
end
  end
end
