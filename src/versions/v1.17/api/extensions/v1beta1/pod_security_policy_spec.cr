# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::PodSecurityPolicySpec; end

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

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::PodSecurityPolicySpec`.
  module Types::Api::Extensions::V1beta1::PodSecurityPolicySpec
    # allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
    abstract def allow_privilege_escalation : ::Bool?
    # :ditto:
    abstract def allow_privilege_escalation! : ::Bool
    # :ditto:
    abstract def allow_privilege_escalation? : ::Bool?
    # :ditto:
    abstract def allow_privilege_escalation=(value : ::Bool?)
    # AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
    abstract def allowed_csi_drivers : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?
    # :ditto:
    abstract def allowed_csi_drivers! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)
    # :ditto:
    abstract def allowed_csi_drivers? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?
    # :ditto:
    abstract def allowed_csi_drivers=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?)
    # allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
    abstract def allowed_capabilities : ::Array(String)?
    # :ditto:
    abstract def allowed_capabilities! : ::Array(String)
    # :ditto:
    abstract def allowed_capabilities? : ::Array(String)?
    # :ditto:
    abstract def allowed_capabilities=(value : ::Array(String)?)
    # allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
    abstract def allowed_flex_volumes : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?
    # :ditto:
    abstract def allowed_flex_volumes! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)
    # :ditto:
    abstract def allowed_flex_volumes? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?
    # :ditto:
    abstract def allowed_flex_volumes=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?)
    # allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
    abstract def allowed_host_paths : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?
    # :ditto:
    abstract def allowed_host_paths! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)
    # :ditto:
    abstract def allowed_host_paths? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?
    # :ditto:
    abstract def allowed_host_paths=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?)
    # AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
    abstract def allowed_proc_mount_types : ::Array(String)?
    # :ditto:
    abstract def allowed_proc_mount_types! : ::Array(String)
    # :ditto:
    abstract def allowed_proc_mount_types? : ::Array(String)?
    # :ditto:
    abstract def allowed_proc_mount_types=(value : ::Array(String)?)
    # allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
    #
    # Examples: e.g. "foo/*" allows [["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.)](["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.))
    abstract def allowed_unsafe_sysctls : ::Array(String)?
    # :ditto:
    abstract def allowed_unsafe_sysctls! : ::Array(String)
    # :ditto:
    abstract def allowed_unsafe_sysctls? : ::Array(String)?
    # :ditto:
    abstract def allowed_unsafe_sysctls=(value : ::Array(String)?)
    # defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
    abstract def default_add_capabilities : ::Array(String)?
    # :ditto:
    abstract def default_add_capabilities! : ::Array(String)
    # :ditto:
    abstract def default_add_capabilities? : ::Array(String)?
    # :ditto:
    abstract def default_add_capabilities=(value : ::Array(String)?)
    # defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    abstract def default_allow_privilege_escalation : ::Bool?
    # :ditto:
    abstract def default_allow_privilege_escalation! : ::Bool
    # :ditto:
    abstract def default_allow_privilege_escalation? : ::Bool?
    # :ditto:
    abstract def default_allow_privilege_escalation=(value : ::Bool?)
    # forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
    #
    # Examples: e.g. "foo/*" forbids [["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.)](["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.))
    abstract def forbidden_sysctls : ::Array(String)?
    # :ditto:
    abstract def forbidden_sysctls! : ::Array(String)
    # :ditto:
    abstract def forbidden_sysctls? : ::Array(String)?
    # :ditto:
    abstract def forbidden_sysctls=(value : ::Array(String)?)
    # fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    abstract def fs_group : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions
    # :ditto:
    abstract def fs_group! : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions
    # :ditto:
    abstract def fs_group? : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions?
    # :ditto:
    abstract def fs_group=(value : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions)
    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    abstract def host_ipc : ::Bool?
    # :ditto:
    abstract def host_ipc! : ::Bool
    # :ditto:
    abstract def host_ipc? : ::Bool?
    # :ditto:
    abstract def host_ipc=(value : ::Bool?)
    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    abstract def host_network : ::Bool?
    # :ditto:
    abstract def host_network! : ::Bool
    # :ditto:
    abstract def host_network? : ::Bool?
    # :ditto:
    abstract def host_network=(value : ::Bool?)
    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    abstract def host_pid : ::Bool?
    # :ditto:
    abstract def host_pid! : ::Bool
    # :ditto:
    abstract def host_pid? : ::Bool?
    # :ditto:
    abstract def host_pid=(value : ::Bool?)
    # hostPorts determines which host port ranges are allowed to be exposed.
    abstract def host_ports : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?
    # :ditto:
    abstract def host_ports! : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)
    # :ditto:
    abstract def host_ports? : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?
    # :ditto:
    abstract def host_ports=(value : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?)
    # privileged determines if a pod can request to be run as privileged.
    abstract def privileged : ::Bool?
    # :ditto:
    abstract def privileged! : ::Bool
    # :ditto:
    abstract def privileged? : ::Bool?
    # :ditto:
    abstract def privileged=(value : ::Bool?)
    # readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    abstract def read_only_root_filesystem : ::Bool?
    # :ditto:
    abstract def read_only_root_filesystem! : ::Bool
    # :ditto:
    abstract def read_only_root_filesystem? : ::Bool?
    # :ditto:
    abstract def read_only_root_filesystem=(value : ::Bool?)
    # requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    abstract def required_drop_capabilities : ::Array(String)?
    # :ditto:
    abstract def required_drop_capabilities! : ::Array(String)
    # :ditto:
    abstract def required_drop_capabilities? : ::Array(String)?
    # :ditto:
    abstract def required_drop_capabilities=(value : ::Array(String)?)
    # RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
    abstract def run_as_group : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?
    # :ditto:
    abstract def run_as_group! : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions
    # :ditto:
    abstract def run_as_group? : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?
    # :ditto:
    abstract def run_as_group=(value : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?)
    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    abstract def run_as_user : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions
    # :ditto:
    abstract def run_as_user! : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions
    # :ditto:
    abstract def run_as_user? : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions?
    # :ditto:
    abstract def run_as_user=(value : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions)
    # runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
    abstract def runtime_class : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?
    # :ditto:
    abstract def runtime_class! : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions
    # :ditto:
    abstract def runtime_class? : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?
    # :ditto:
    abstract def runtime_class=(value : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?)
    # seLinux is the strategy that will dictate the allowable labels that may be set.
    abstract def se_linux : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions
    # :ditto:
    abstract def se_linux! : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions
    # :ditto:
    abstract def se_linux? : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions?
    # :ditto:
    abstract def se_linux=(value : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions)
    # supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    abstract def supplemental_groups : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions
    # :ditto:
    abstract def supplemental_groups! : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions
    # :ditto:
    abstract def supplemental_groups? : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions?
    # :ditto:
    abstract def supplemental_groups=(value : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions)
    # volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
    abstract def volumes : ::Array(String)?
    # :ditto:
    abstract def volumes! : ::Array(String)
    # :ditto:
    abstract def volumes? : ::Array(String)?
    # :ditto:
    abstract def volumes=(value : ::Array(String)?)
  end

  # PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
  @[::K8S::Properties(
    allow_privilege_escalation: {key: "allowPrivilegeEscalation", accessor: "allow_privilege_escalation", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_csi_drivers: {key: "allowedCSIDrivers", accessor: "allowed_csi_drivers", kind: "::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)", nilable: true, default: nil, read_only: false, description: "AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_capabilities: {key: "allowedCapabilities", accessor: "allowed_capabilities", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_flex_volumes: {key: "allowedFlexVolumes", accessor: "allowed_flex_volumes", kind: "::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)", nilable: true, default: nil, read_only: false, description: "allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the \"volumes\" field.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_host_paths: {key: "allowedHostPaths", accessor: "allowed_host_paths", kind: "::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)", nilable: true, default: nil, read_only: false, description: "allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_proc_mount_types: {key: "allowedProcMountTypes", accessor: "allowed_proc_mount_types", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_unsafe_sysctls: {key: "allowedUnsafeSysctls", accessor: "allowed_unsafe_sysctls", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.\n\nExamples: e.g. \"foo/*\" allows [\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" allows \"foo.bar\", \"foo.baz\", etc.](\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" allows \"foo.bar\", \"foo.baz\", etc.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default_add_capabilities: {key: "defaultAddCapabilities", accessor: "default_add_capabilities", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default_allow_privilege_escalation: {key: "defaultAllowPrivilegeEscalation", accessor: "default_allow_privilege_escalation", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    forbidden_sysctls: {key: "forbiddenSysctls", accessor: "forbidden_sysctls", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.\n\nExamples: e.g. \"foo/*\" forbids [\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" forbids \"foo.bar\", \"foo.baz\", etc.](\"foo/bar\", \"foo/baz\", etc. e.g. \"foo.*\" forbids \"foo.bar\", \"foo.baz\", etc.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_group: {key: "fsGroup", accessor: "fs_group", kind: "::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions", nilable: false, default: nil, read_only: false, description: "fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_ipc: {key: "hostIPC", accessor: "host_ipc", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "hostIPC determines if the policy allows the use of HostIPC in the pod spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_network: {key: "hostNetwork", accessor: "host_network", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_pid: {key: "hostPID", accessor: "host_pid", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "hostPID determines if the policy allows the use of HostPID in the pod spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_ports: {key: "hostPorts", accessor: "host_ports", kind: "::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)", nilable: true, default: nil, read_only: false, description: "hostPorts determines which host port ranges are allowed to be exposed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    privileged: {key: "privileged", accessor: "privileged", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "privileged determines if a pod can request to be run as privileged.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only_root_filesystem: {key: "readOnlyRootFilesystem", accessor: "read_only_root_filesystem", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    required_drop_capabilities: {key: "requiredDropCapabilities", accessor: "required_drop_capabilities", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    run_as_group: {key: "runAsGroup", accessor: "run_as_group", kind: "::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions", nilable: true, default: nil, read_only: false, description: "RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    run_as_user: {key: "runAsUser", accessor: "run_as_user", kind: "::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions", nilable: false, default: nil, read_only: false, description: "runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    runtime_class: {key: "runtimeClass", accessor: "runtime_class", kind: "::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions", nilable: true, default: nil, read_only: false, description: "runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    se_linux: {key: "seLinux", accessor: "se_linux", kind: "::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions", nilable: false, default: nil, read_only: false, description: "seLinux is the strategy that will dictate the allowable labels that may be set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    supplemental_groups: {key: "supplementalGroups", accessor: "supplemental_groups", kind: "::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions", nilable: false, default: nil, read_only: false, description: "supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes: {key: "volumes", accessor: "volumes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::PodSecurityPolicySpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::PodSecurityPolicySpec

    # allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
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

    # AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
    def allowed_csi_drivers : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?
      self.["allowedCSIDrivers"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?)
    end

    # :ditto:
    def allowed_csi_drivers! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)
      self.["allowedCSIDrivers"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?).not_nil!
    end

    # :ditto:
    def allowed_csi_drivers? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?
      self.["allowedCSIDrivers"]?.as(::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?)
    end

    # :ditto:
    def allowed_csi_drivers=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver)?)
      self.["allowedCSIDrivers"] = value
    end

    # allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
    def allowed_capabilities : ::Array(String)?
      self.["allowedCapabilities"].as(::Array(String)?)
    end

    # :ditto:
    def allowed_capabilities! : ::Array(String)
      self.["allowedCapabilities"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def allowed_capabilities? : ::Array(String)?
      self.["allowedCapabilities"]?.as(::Array(String)?)
    end

    # :ditto:
    def allowed_capabilities=(value : ::Array(String)?)
      self.["allowedCapabilities"] = value
    end

    # allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
    def allowed_flex_volumes : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?
      self.["allowedFlexVolumes"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?)
    end

    # :ditto:
    def allowed_flex_volumes! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)
      self.["allowedFlexVolumes"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?).not_nil!
    end

    # :ditto:
    def allowed_flex_volumes? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?
      self.["allowedFlexVolumes"]?.as(::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?)
    end

    # :ditto:
    def allowed_flex_volumes=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume)?)
      self.["allowedFlexVolumes"] = value
    end

    # allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
    def allowed_host_paths : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?
      self.["allowedHostPaths"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?)
    end

    # :ditto:
    def allowed_host_paths! : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)
      self.["allowedHostPaths"].as(::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?).not_nil!
    end

    # :ditto:
    def allowed_host_paths? : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?
      self.["allowedHostPaths"]?.as(::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?)
    end

    # :ditto:
    def allowed_host_paths=(value : ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath)?)
      self.["allowedHostPaths"] = value
    end

    # AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
    def allowed_proc_mount_types : ::Array(String)?
      self.["allowedProcMountTypes"].as(::Array(String)?)
    end

    # :ditto:
    def allowed_proc_mount_types! : ::Array(String)
      self.["allowedProcMountTypes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def allowed_proc_mount_types? : ::Array(String)?
      self.["allowedProcMountTypes"]?.as(::Array(String)?)
    end

    # :ditto:
    def allowed_proc_mount_types=(value : ::Array(String)?)
      self.["allowedProcMountTypes"] = value
    end

    # allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
    #
    # Examples: e.g. "foo/*" allows [["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.)](["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.))
    def allowed_unsafe_sysctls : ::Array(String)?
      self.["allowedUnsafeSysctls"].as(::Array(String)?)
    end

    # :ditto:
    def allowed_unsafe_sysctls! : ::Array(String)
      self.["allowedUnsafeSysctls"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def allowed_unsafe_sysctls? : ::Array(String)?
      self.["allowedUnsafeSysctls"]?.as(::Array(String)?)
    end

    # :ditto:
    def allowed_unsafe_sysctls=(value : ::Array(String)?)
      self.["allowedUnsafeSysctls"] = value
    end

    # defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
    def default_add_capabilities : ::Array(String)?
      self.["defaultAddCapabilities"].as(::Array(String)?)
    end

    # :ditto:
    def default_add_capabilities! : ::Array(String)
      self.["defaultAddCapabilities"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def default_add_capabilities? : ::Array(String)?
      self.["defaultAddCapabilities"]?.as(::Array(String)?)
    end

    # :ditto:
    def default_add_capabilities=(value : ::Array(String)?)
      self.["defaultAddCapabilities"] = value
    end

    # defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    def default_allow_privilege_escalation : ::Bool?
      self.["defaultAllowPrivilegeEscalation"].as(::Bool?)
    end

    # :ditto:
    def default_allow_privilege_escalation! : ::Bool
      self.["defaultAllowPrivilegeEscalation"].as(::Bool?).not_nil!
    end

    # :ditto:
    def default_allow_privilege_escalation? : ::Bool?
      self.["defaultAllowPrivilegeEscalation"]?.as(::Bool?)
    end

    # :ditto:
    def default_allow_privilege_escalation=(value : ::Bool?)
      self.["defaultAllowPrivilegeEscalation"] = value
    end

    # forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
    #
    # Examples: e.g. "foo/*" forbids [["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.)](["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.))
    def forbidden_sysctls : ::Array(String)?
      self.["forbiddenSysctls"].as(::Array(String)?)
    end

    # :ditto:
    def forbidden_sysctls! : ::Array(String)
      self.["forbiddenSysctls"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def forbidden_sysctls? : ::Array(String)?
      self.["forbiddenSysctls"]?.as(::Array(String)?)
    end

    # :ditto:
    def forbidden_sysctls=(value : ::Array(String)?)
      self.["forbiddenSysctls"] = value
    end

    # fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    def fs_group : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions
      self.["fsGroup"].as(::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions)
    end

    # :ditto:
    def fs_group! : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions
      self.["fsGroup"].as(::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions).not_nil!
    end

    # :ditto:
    def fs_group? : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions?
      self.["fsGroup"]?.as(::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions?)
    end

    # :ditto:
    def fs_group=(value : ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions)
      self.["fsGroup"] = value
    end

    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    def host_ipc : ::Bool?
      self.["hostIPC"].as(::Bool?)
    end

    # :ditto:
    def host_ipc! : ::Bool
      self.["hostIPC"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_ipc? : ::Bool?
      self.["hostIPC"]?.as(::Bool?)
    end

    # :ditto:
    def host_ipc=(value : ::Bool?)
      self.["hostIPC"] = value
    end

    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    def host_network : ::Bool?
      self.["hostNetwork"].as(::Bool?)
    end

    # :ditto:
    def host_network! : ::Bool
      self.["hostNetwork"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_network? : ::Bool?
      self.["hostNetwork"]?.as(::Bool?)
    end

    # :ditto:
    def host_network=(value : ::Bool?)
      self.["hostNetwork"] = value
    end

    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    def host_pid : ::Bool?
      self.["hostPID"].as(::Bool?)
    end

    # :ditto:
    def host_pid! : ::Bool
      self.["hostPID"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_pid? : ::Bool?
      self.["hostPID"]?.as(::Bool?)
    end

    # :ditto:
    def host_pid=(value : ::Bool?)
      self.["hostPID"] = value
    end

    # hostPorts determines which host port ranges are allowed to be exposed.
    def host_ports : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?
      self.["hostPorts"].as(::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?)
    end

    # :ditto:
    def host_ports! : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)
      self.["hostPorts"].as(::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?).not_nil!
    end

    # :ditto:
    def host_ports? : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?
      self.["hostPorts"]?.as(::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?)
    end

    # :ditto:
    def host_ports=(value : ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange)?)
      self.["hostPorts"] = value
    end

    # privileged determines if a pod can request to be run as privileged.
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

    # readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
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

    # requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    def required_drop_capabilities : ::Array(String)?
      self.["requiredDropCapabilities"].as(::Array(String)?)
    end

    # :ditto:
    def required_drop_capabilities! : ::Array(String)
      self.["requiredDropCapabilities"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def required_drop_capabilities? : ::Array(String)?
      self.["requiredDropCapabilities"]?.as(::Array(String)?)
    end

    # :ditto:
    def required_drop_capabilities=(value : ::Array(String)?)
      self.["requiredDropCapabilities"] = value
    end

    # RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
    def run_as_group : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?
      self.["runAsGroup"].as(::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?)
    end

    # :ditto:
    def run_as_group! : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions
      self.["runAsGroup"].as(::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?).not_nil!
    end

    # :ditto:
    def run_as_group? : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?
      self.["runAsGroup"]?.as(::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?)
    end

    # :ditto:
    def run_as_group=(value : ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions?)
      self.["runAsGroup"] = value
    end

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    def run_as_user : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions
      self.["runAsUser"].as(::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions)
    end

    # :ditto:
    def run_as_user! : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions
      self.["runAsUser"].as(::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions).not_nil!
    end

    # :ditto:
    def run_as_user? : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions?
      self.["runAsUser"]?.as(::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions?)
    end

    # :ditto:
    def run_as_user=(value : ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions)
      self.["runAsUser"] = value
    end

    # runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
    def runtime_class : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?
      self.["runtimeClass"].as(::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?)
    end

    # :ditto:
    def runtime_class! : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions
      self.["runtimeClass"].as(::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?).not_nil!
    end

    # :ditto:
    def runtime_class? : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?
      self.["runtimeClass"]?.as(::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?)
    end

    # :ditto:
    def runtime_class=(value : ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions?)
      self.["runtimeClass"] = value
    end

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    def se_linux : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions
      self.["seLinux"].as(::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions)
    end

    # :ditto:
    def se_linux! : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions
      self.["seLinux"].as(::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions).not_nil!
    end

    # :ditto:
    def se_linux? : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions?
      self.["seLinux"]?.as(::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions?)
    end

    # :ditto:
    def se_linux=(value : ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions)
      self.["seLinux"] = value
    end

    # supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    def supplemental_groups : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions
      self.["supplementalGroups"].as(::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions)
    end

    # :ditto:
    def supplemental_groups! : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions
      self.["supplementalGroups"].as(::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions).not_nil!
    end

    # :ditto:
    def supplemental_groups? : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions?
      self.["supplementalGroups"]?.as(::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions?)
    end

    # :ditto:
    def supplemental_groups=(value : ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions)
      self.["supplementalGroups"] = value
    end

    # volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
    def volumes : ::Array(String)?
      self.["volumes"].as(::Array(String)?)
    end

    # :ditto:
    def volumes! : ::Array(String)
      self.["volumes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def volumes? : ::Array(String)?
      self.["volumes"]?.as(::Array(String)?)
    end

    # :ditto:
    def volumes=(value : ::Array(String)?)
      self.["volumes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "allowPrivilegeEscalation", accessor: "allow_privilege_escalation", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "allowedCSIDrivers", accessor: "allowed_csi_drivers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedCSIDriver) },
        { key: "allowedCapabilities", accessor: "allowed_capabilities", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "allowedFlexVolumes", accessor: "allowed_flex_volumes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedFlexVolume) },
        { key: "allowedHostPaths", accessor: "allowed_host_paths", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::AllowedHostPath) },
        { key: "allowedProcMountTypes", accessor: "allowed_proc_mount_types", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "allowedUnsafeSysctls", accessor: "allowed_unsafe_sysctls", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "defaultAddCapabilities", accessor: "default_add_capabilities", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "defaultAllowPrivilegeEscalation", accessor: "default_allow_privilege_escalation", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "forbiddenSysctls", accessor: "forbidden_sysctls", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "fsGroup", accessor: "fs_group", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::FSGroupStrategyOptions },
        { key: "hostIPC", accessor: "host_ipc", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostNetwork", accessor: "host_network", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostPID", accessor: "host_pid", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostPorts", accessor: "host_ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::HostPortRange) },
        { key: "privileged", accessor: "privileged", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "readOnlyRootFilesystem", accessor: "read_only_root_filesystem", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "requiredDropCapabilities", accessor: "required_drop_capabilities", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "runAsGroup", accessor: "run_as_group", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::RunAsGroupStrategyOptions },
        { key: "runAsUser", accessor: "run_as_user", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::RunAsUserStrategyOptions },
        { key: "runtimeClass", accessor: "runtime_class", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::RuntimeClassStrategyOptions },
        { key: "seLinux", accessor: "se_linux", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::SELinuxStrategyOptions },
        { key: "supplementalGroups", accessor: "supplemental_groups", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions },
        { key: "volumes", accessor: "volumes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
