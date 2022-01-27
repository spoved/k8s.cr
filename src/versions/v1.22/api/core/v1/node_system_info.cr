# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSystemInfo; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSystemInfo`.
  module Types::Api::Core::V1::NodeSystemInfo
    # The Architecture reported by the node
    abstract def architecture : String?
    # :ditto:
    abstract def architecture! : String
    # :ditto:
    abstract def architecture? : String?
    # :ditto:
    abstract def architecture=(value : String)
    # Boot ID reported by the node.
    abstract def boot_id : String?
    # :ditto:
    abstract def boot_id! : String
    # :ditto:
    abstract def boot_id? : String?
    # :ditto:
    abstract def boot_id=(value : String)
    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    abstract def container_runtime_version : String?
    # :ditto:
    abstract def container_runtime_version! : String
    # :ditto:
    abstract def container_runtime_version? : String?
    # :ditto:
    abstract def container_runtime_version=(value : String)
    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    abstract def kernel_version : String?
    # :ditto:
    abstract def kernel_version! : String
    # :ditto:
    abstract def kernel_version? : String?
    # :ditto:
    abstract def kernel_version=(value : String)
    # KubeProxy Version reported by the node.
    abstract def kube_proxy_version : String?
    # :ditto:
    abstract def kube_proxy_version! : String
    # :ditto:
    abstract def kube_proxy_version? : String?
    # :ditto:
    abstract def kube_proxy_version=(value : String)
    # Kubelet Version reported by the node.
    abstract def kubelet_version : String?
    # :ditto:
    abstract def kubelet_version! : String
    # :ditto:
    abstract def kubelet_version? : String?
    # :ditto:
    abstract def kubelet_version=(value : String)
    # MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [[http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)](http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html))
    abstract def machine_id : String?
    # :ditto:
    abstract def machine_id! : String
    # :ditto:
    abstract def machine_id? : String?
    # :ditto:
    abstract def machine_id=(value : String)
    # The Operating System reported by the node
    abstract def operating_system : String?
    # :ditto:
    abstract def operating_system! : String
    # :ditto:
    abstract def operating_system? : String?
    # :ditto:
    abstract def operating_system=(value : String)
    # OS Image reported by the node from [[/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)]([/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).))
    abstract def os_image : String?
    # :ditto:
    abstract def os_image! : String
    # :ditto:
    abstract def os_image? : String?
    # :ditto:
    abstract def os_image=(value : String)
    # SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [[https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid)](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid))
    abstract def system_uuid : String?
    # :ditto:
    abstract def system_uuid! : String
    # :ditto:
    abstract def system_uuid? : String?
    # :ditto:
    abstract def system_uuid=(value : String)
  end

  # NodeSystemInfo is a set of [ids/uuids to uniquely identify the node.](ids/uuids to uniquely identify the node.)
  @[::K8S::Properties(
    architecture: {key: "architecture", accessor: "architecture", kind: "String", nilable: false, default: nil, read_only: false, description: "The Architecture reported by the node", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    boot_id: {key: "bootID", accessor: "boot_id", kind: "String", nilable: false, default: nil, read_only: false, description: "Boot ID reported by the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    container_runtime_version: {key: "containerRuntimeVersion", accessor: "container_runtime_version", kind: "String", nilable: false, default: nil, read_only: false, description: "ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kernel_version: {key: "kernelVersion", accessor: "kernel_version", kind: "String", nilable: false, default: nil, read_only: false, description: "Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kube_proxy_version: {key: "kubeProxyVersion", accessor: "kube_proxy_version", kind: "String", nilable: false, default: nil, read_only: false, description: "KubeProxy Version reported by the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kubelet_version: {key: "kubeletVersion", accessor: "kubelet_version", kind: "String", nilable: false, default: nil, read_only: false, description: "Kubelet Version reported by the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    machine_id: {key: "machineID", accessor: "machine_id", kind: "String", nilable: false, default: nil, read_only: false, description: "MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operating_system: {key: "operatingSystem", accessor: "operating_system", kind: "String", nilable: false, default: nil, read_only: false, description: "The Operating System reported by the node", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    os_image: {key: "osImage", accessor: "os_image", kind: "String", nilable: false, default: nil, read_only: false, description: "OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    system_uuid: {key: "systemUUID", accessor: "system_uuid", kind: "String", nilable: false, default: nil, read_only: false, description: "SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeSystemInfo < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NodeSystemInfo
    k8s_object_accessor("architecture", architecture : String, false, false, "The Architecture reported by the node")
    k8s_object_accessor("bootID", boot_id : String, false, false, "Boot ID reported by the node.")
    k8s_object_accessor("containerRuntimeVersion", container_runtime_version : String, false, false, "ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).")
    k8s_object_accessor("kernelVersion", kernel_version : String, false, false, "Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).")
    k8s_object_accessor("kubeProxyVersion", kube_proxy_version : String, false, false, "KubeProxy Version reported by the node.")
    k8s_object_accessor("kubeletVersion", kubelet_version : String, false, false, "Kubelet Version reported by the node.")
    k8s_object_accessor("machineID", machine_id : String, false, false, "MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)")
    k8s_object_accessor("operatingSystem", operating_system : String, false, false, "The Operating System reported by the node")
    k8s_object_accessor("osImage", os_image : String, false, false, "OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)")
    k8s_object_accessor("systemUUID", system_uuid : String, false, false, "SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid)")

    def initialize(*, architecture : String? = nil, boot_id : String? = nil, container_runtime_version : String? = nil, kernel_version : String? = nil, kube_proxy_version : String? = nil, kubelet_version : String? = nil, machine_id : String? = nil, operating_system : String? = nil, os_image : String? = nil, system_uuid : String? = nil)
      super()
      self.["architecture"] = architecture
      self.["bootID"] = boot_id
      self.["containerRuntimeVersion"] = container_runtime_version
      self.["kernelVersion"] = kernel_version
      self.["kubeProxyVersion"] = kube_proxy_version
      self.["kubeletVersion"] = kubelet_version
      self.["machineID"] = machine_id
      self.["operatingSystem"] = operating_system
      self.["osImage"] = os_image
      self.["systemUUID"] = system_uuid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "architecture", accessor: "architecture", nilable: false, read_only: false, default: nil, kind: String},
      {key: "bootID", accessor: "boot_id", nilable: false, read_only: false, default: nil, kind: String},
      {key: "containerRuntimeVersion", accessor: "container_runtime_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "kernelVersion", accessor: "kernel_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "kubeProxyVersion", accessor: "kube_proxy_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "kubeletVersion", accessor: "kubelet_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "machineID", accessor: "machine_id", nilable: false, read_only: false, default: nil, kind: String},
      {key: "operatingSystem", accessor: "operating_system", nilable: false, read_only: false, default: nil, kind: String},
      {key: "osImage", accessor: "os_image", nilable: false, read_only: false, default: nil, kind: String},
      {key: "systemUUID", accessor: "system_uuid", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
