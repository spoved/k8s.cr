# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./allowed_csi_driver"
require "./allowed_flex_volume"
require "./allowed_host_path"
require "./fs_group_strategy_options"
require "./host_port_range"
require "./run_as_group_strategy_options"
require "./run_as_user_strategy_options"
require "./runtime_class_strategy_options"
require "./se_linux_strategy_options"
require "./supplemental_groups_strategy_options"

::K8S::Kubernetes::Resource.define_object("PodSecurityPolicySpec",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "allow_privilege_escalation", kind: ::Bool, key: "allowPrivilegeEscalation", nilable: true, read_only: false, description: "allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true."},
    {name: "allowed_csi_drivers", kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver), key: "allowedCSIDrivers", nilable: true, read_only: false, description: "AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate."},
    {name: "allowed_capabilities", kind: ::Array(String), key: "allowedCapabilities", nilable: true, read_only: false, description: "allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities."},
    {name: "allowed_flex_volumes", kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume), key: "allowedFlexVolumes", nilable: true, read_only: false, description: "allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the \"volumes\" field."},
    {name: "allowed_host_paths", kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath), key: "allowedHostPaths", nilable: true, read_only: false, description: "allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used."},
    {name: "allowed_proc_mount_types", kind: ::Array(String), key: "allowedProcMountTypes", nilable: true, read_only: false, description: "AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled."},
    {name: "allowed_unsafe_sysctls", kind: ::Array(String), key: "allowedUnsafeSysctls", nilable: true, read_only: false, description: "allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.\n\nExamples: e.g. \"foo/*\" allows [\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" allows \"foo.bar\", \"foo.baz\", etc.](\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" allows \"foo.bar\", \"foo.baz\", etc.)"},
    {name: "default_add_capabilities", kind: ::Array(String), key: "defaultAddCapabilities", nilable: true, read_only: false, description: "defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list."},
    {name: "default_allow_privilege_escalation", kind: ::Bool, key: "defaultAllowPrivilegeEscalation", nilable: true, read_only: false, description: "defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process."},
    {name: "forbidden_sysctls", kind: ::Array(String), key: "forbiddenSysctls", nilable: true, read_only: false, description: "forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.\n\nExamples: e.g. \"foo/*\" forbids [\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" forbids \"foo.bar\", \"foo.baz\", etc.](\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" forbids \"foo.bar\", \"foo.baz\", etc.)"},
    {name: "fs_group", kind: ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions, key: "fsGroup", nilable: false, read_only: false, description: "fsGroup is the strategy that will dictate what fs group is used by the SecurityContext."},
    {name: "host_ipc", kind: ::Bool, key: "hostIPC", nilable: true, read_only: false, description: "hostIPC determines if the policy allows the use of HostIPC in the pod spec."},
    {name: "host_network", kind: ::Bool, key: "hostNetwork", nilable: true, read_only: false, description: "hostNetwork determines if the policy allows the use of HostNetwork in the pod spec."},
    {name: "host_pid", kind: ::Bool, key: "hostPID", nilable: true, read_only: false, description: "hostPID determines if the policy allows the use of HostPID in the pod spec."},
    {name: "host_ports", kind: ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange), key: "hostPorts", nilable: true, read_only: false, description: "hostPorts determines which host port ranges are allowed to be exposed."},
    {name: "privileged", kind: ::Bool, key: "privileged", nilable: true, read_only: false, description: "privileged determines if a pod can request to be run as privileged."},
    {name: "read_only_root_filesystem", kind: ::Bool, key: "readOnlyRootFilesystem", nilable: true, read_only: false, description: "readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to."},
    {name: "required_drop_capabilities", kind: ::Array(String), key: "requiredDropCapabilities", nilable: true, read_only: false, description: "requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added."},
    {name: "run_as_group", kind: ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions, key: "runAsGroup", nilable: true, read_only: false, description: "RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled."},
    {name: "run_as_user", kind: ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions, key: "runAsUser", nilable: false, read_only: false, description: "runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set."},
    {name: "runtime_class", kind: ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions, key: "runtimeClass", nilable: true, read_only: false, description: "runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled."},
    {name: "se_linux", kind: ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions, key: "seLinux", nilable: false, read_only: false, description: "seLinux is the strategy that will dictate the allowable labels that may be set."},
    {name: "supplemental_groups", kind: ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions, key: "supplementalGroups", nilable: false, read_only: false, description: "supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext."},
    {name: "volumes", kind: ::Array(String), key: "volumes", nilable: true, read_only: false, description: "volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'."},

  ]
)
