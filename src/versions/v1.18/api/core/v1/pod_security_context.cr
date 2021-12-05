# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
  @[::K8S::Properties(
    fs_group: {type: Int32, nilable: true, key: "fsGroup", getter: false, setter: false},
    fs_group_change_policy: {type: String, nilable: true, key: "fsGroupChangePolicy", getter: false, setter: false},
    run_as_group: {type: Int32, nilable: true, key: "runAsGroup", getter: false, setter: false},
    run_as_non_root: {type: Bool, nilable: true, key: "runAsNonRoot", getter: false, setter: false},
    run_as_user: {type: Int32, nilable: true, key: "runAsUser", getter: false, setter: false},
    se_linux_options: {type: Api::Core::V1::SELinuxOptions, nilable: true, key: "seLinuxOptions", getter: false, setter: false},
    supplemental_groups: {type: Array(Int32), nilable: true, key: "supplementalGroups", getter: false, setter: false},
    sysctls: {type: Array(Api::Core::V1::Sysctl), nilable: true, key: "sysctls", getter: false, setter: false},
    windows_options: {type: Api::Core::V1::WindowsSecurityContextOptions, nilable: true, key: "windowsOptions", getter: false, setter: false},
  )]
  class Api::Core::V1::PodSecurityContext
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
    #
    # 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    #
    # If unset, the Kubelet will not modify the ownership and permissions of any volume.
    @[::JSON::Field(key: "fsGroup")]
    @[::YAML::Field(key: "fsGroup")]
    property fs_group : Int32 | Nil

    # fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified defaults to "Always".
    @[::JSON::Field(key: "fsGroupChangePolicy")]
    @[::YAML::Field(key: "fsGroupChangePolicy")]
    property fs_group_change_policy : String | Nil

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "runAsGroup")]
    @[::YAML::Field(key: "runAsGroup")]
    property run_as_group : Int32 | Nil

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "runAsNonRoot")]
    @[::YAML::Field(key: "runAsNonRoot")]
    property run_as_non_root : Bool | Nil

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "runAsUser")]
    @[::YAML::Field(key: "runAsUser")]
    property run_as_user : Int32 | Nil

    # The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "seLinuxOptions")]
    @[::YAML::Field(key: "seLinuxOptions")]
    property se_linux_options : Api::Core::V1::SELinuxOptions | Nil

    # A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.
    @[::JSON::Field(key: "supplementalGroups")]
    @[::YAML::Field(key: "supplementalGroups")]
    property supplemental_groups : Array(Int32) | Nil

    # Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.
    property sysctls : Array(Api::Core::V1::Sysctl) | Nil

    # The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "windowsOptions")]
    @[::YAML::Field(key: "windowsOptions")]
    property windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil

    def initialize(*, @fs_group : Int32 | Nil = nil, @fs_group_change_policy : String | Nil = nil, @run_as_group : Int32 | Nil = nil, @run_as_non_root : Bool | Nil = nil, @run_as_user : Int32 | Nil = nil, @se_linux_options : Api::Core::V1::SELinuxOptions | Nil = nil, @supplemental_groups : Array | Nil = nil, @sysctls : Array | Nil = nil, @windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil = nil)
    end
  end
end
