# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./se_linux_options"
require "./sysctl"
require "./windows_security_context_options"

::K8S::Kubernetes::Resource.define_object("PodSecurityContext",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_group", kind: Int32, key: "fsGroup", nilable: true, read_only: false, description: "A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:\n\n1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----\n\nIf unset, the Kubelet will not modify the ownership and permissions of any volume."},
    {name: "run_as_group", kind: Int32, key: "runAsGroup", nilable: true, read_only: false, description: "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    {name: "run_as_non_root", kind: ::Bool, key: "runAsNonRoot", nilable: true, read_only: false, description: "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
    {name: "run_as_user", kind: Int32, key: "runAsUser", nilable: true, read_only: false, description: "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    {name: "se_linux_options", kind: ::K8S::Api::Core::V1::SELinuxOptions, key: "seLinuxOptions", nilable: true, read_only: false, description: "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."},
    {name: "supplemental_groups", kind: ::Array(Int32), key: "supplementalGroups", nilable: true, read_only: false, description: "A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container."},
    {name: "sysctls", kind: ::Array(::K8S::Api::Core::V1::Sysctl), key: "sysctls", nilable: true, read_only: false, description: "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch."},
    {name: "windows_options", kind: ::K8S::Api::Core::V1::WindowsSecurityContextOptions, key: "windowsOptions", nilable: true, read_only: false, description: "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},

  ]
)
