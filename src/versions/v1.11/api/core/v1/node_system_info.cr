# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSystemInfo; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSystemInfo`.
  module Types::Api::Core::V1::NodeSystemInfo
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The Architecture reported by the node
    abstract def architecture : String
    # :ditto:
    abstract def architecture! : String
    # :ditto:
    abstract def architecture? : String?
    # :ditto:
    abstract def architecture=(value : String)
    # Boot ID reported by the node.
    abstract def boot_id : String
    # :ditto:
    abstract def boot_id! : String
    # :ditto:
    abstract def boot_id? : String?
    # :ditto:
    abstract def boot_id=(value : String)
    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    abstract def container_runtime_version : String
    # :ditto:
    abstract def container_runtime_version! : String
    # :ditto:
    abstract def container_runtime_version? : String?
    # :ditto:
    abstract def container_runtime_version=(value : String)
    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    abstract def kernel_version : String
    # :ditto:
    abstract def kernel_version! : String
    # :ditto:
    abstract def kernel_version? : String?
    # :ditto:
    abstract def kernel_version=(value : String)
    # KubeProxy Version reported by the node.
    abstract def kube_proxy_version : String
    # :ditto:
    abstract def kube_proxy_version! : String
    # :ditto:
    abstract def kube_proxy_version? : String?
    # :ditto:
    abstract def kube_proxy_version=(value : String)
    # Kubelet Version reported by the node.
    abstract def kubelet_version : String
    # :ditto:
    abstract def kubelet_version! : String
    # :ditto:
    abstract def kubelet_version? : String?
    # :ditto:
    abstract def kubelet_version=(value : String)
    # MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [[http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)](http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html))
    abstract def machine_id : String
    # :ditto:
    abstract def machine_id! : String
    # :ditto:
    abstract def machine_id? : String?
    # :ditto:
    abstract def machine_id=(value : String)
    # The Operating System reported by the node
    abstract def operating_system : String
    # :ditto:
    abstract def operating_system! : String
    # :ditto:
    abstract def operating_system? : String?
    # :ditto:
    abstract def operating_system=(value : String)
    # OS Image reported by the node from [[/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)]([/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).))
    abstract def os_image : String
    # :ditto:
    abstract def os_image! : String
    # :ditto:
    abstract def os_image? : String?
    # :ditto:
    abstract def os_image=(value : String)
    # SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [[https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html)](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html))
    abstract def system_uuid : String
    # :ditto:
    abstract def system_uuid! : String
    # :ditto:
    abstract def system_uuid? : String?
    # :ditto:
    abstract def system_uuid=(value : String)
  end

  # NodeSystemInfo is a set of [ids/uuids to uniquely identify the node.](ids/uuids to uniquely identify the node.)
  @[::K8S::Properties(
    architecture: {key: "architecture", accessor: "architecture", kind: "String", nilable: false, default: nil, read_only: false, description: "The Architecture reported by the node"},
    boot_id: {key: "bootID", accessor: "boot_id", kind: "String", nilable: false, default: nil, read_only: false, description: "Boot ID reported by the node."},
    container_runtime_version: {key: "containerRuntimeVersion", accessor: "container_runtime_version", kind: "String", nilable: false, default: nil, read_only: false, description: "ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0)."},
    kernel_version: {key: "kernelVersion", accessor: "kernel_version", kind: "String", nilable: false, default: nil, read_only: false, description: "Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64)."},
    kube_proxy_version: {key: "kubeProxyVersion", accessor: "kube_proxy_version", kind: "String", nilable: false, default: nil, read_only: false, description: "KubeProxy Version reported by the node."},
    kubelet_version: {key: "kubeletVersion", accessor: "kubelet_version", kind: "String", nilable: false, default: nil, read_only: false, description: "Kubelet Version reported by the node."},
    machine_id: {key: "machineID", accessor: "machine_id", kind: "String", nilable: false, default: nil, read_only: false, description: "MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)"},
    operating_system: {key: "operatingSystem", accessor: "operating_system", kind: "String", nilable: false, default: nil, read_only: false, description: "The Operating System reported by the node"},
    os_image: {key: "osImage", accessor: "os_image", kind: "String", nilable: false, default: nil, read_only: false, description: "OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)"},
    system_uuid: {key: "systemUUID", accessor: "system_uuid", kind: "String", nilable: false, default: nil, read_only: false, description: "SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html)"},
  )]
  class Api::Core::V1::NodeSystemInfo < ::K8S::Types::Api::Core::V1::NodeSystemInfo::Instance
    include ::K8S::Types::Api::Core::V1::NodeSystemInfo
    include ::K8S::Kubernetes::Object

    # The Architecture reported by the node
    def architecture : String
      self.["architecture"].as(String)
    end

    # :ditto:
    def architecture! : String
      self.["architecture"].as(String).not_nil!
    end

    # :ditto:
    def architecture? : String?
      self.["architecture"]?.as(String?)
    end

    # :ditto:
    def architecture=(value : String)
      self.["architecture"] = value
    end

    # Boot ID reported by the node.
    def boot_id : String
      self.["bootID"].as(String)
    end

    # :ditto:
    def boot_id! : String
      self.["bootID"].as(String).not_nil!
    end

    # :ditto:
    def boot_id? : String?
      self.["bootID"]?.as(String?)
    end

    # :ditto:
    def boot_id=(value : String)
      self.["bootID"] = value
    end

    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    def container_runtime_version : String
      self.["containerRuntimeVersion"].as(String)
    end

    # :ditto:
    def container_runtime_version! : String
      self.["containerRuntimeVersion"].as(String).not_nil!
    end

    # :ditto:
    def container_runtime_version? : String?
      self.["containerRuntimeVersion"]?.as(String?)
    end

    # :ditto:
    def container_runtime_version=(value : String)
      self.["containerRuntimeVersion"] = value
    end

    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    def kernel_version : String
      self.["kernelVersion"].as(String)
    end

    # :ditto:
    def kernel_version! : String
      self.["kernelVersion"].as(String).not_nil!
    end

    # :ditto:
    def kernel_version? : String?
      self.["kernelVersion"]?.as(String?)
    end

    # :ditto:
    def kernel_version=(value : String)
      self.["kernelVersion"] = value
    end

    # KubeProxy Version reported by the node.
    def kube_proxy_version : String
      self.["kubeProxyVersion"].as(String)
    end

    # :ditto:
    def kube_proxy_version! : String
      self.["kubeProxyVersion"].as(String).not_nil!
    end

    # :ditto:
    def kube_proxy_version? : String?
      self.["kubeProxyVersion"]?.as(String?)
    end

    # :ditto:
    def kube_proxy_version=(value : String)
      self.["kubeProxyVersion"] = value
    end

    # Kubelet Version reported by the node.
    def kubelet_version : String
      self.["kubeletVersion"].as(String)
    end

    # :ditto:
    def kubelet_version! : String
      self.["kubeletVersion"].as(String).not_nil!
    end

    # :ditto:
    def kubelet_version? : String?
      self.["kubeletVersion"]?.as(String?)
    end

    # :ditto:
    def kubelet_version=(value : String)
      self.["kubeletVersion"] = value
    end

    # MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [[http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)](http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html))
    def machine_id : String
      self.["machineID"].as(String)
    end

    # :ditto:
    def machine_id! : String
      self.["machineID"].as(String).not_nil!
    end

    # :ditto:
    def machine_id? : String?
      self.["machineID"]?.as(String?)
    end

    # :ditto:
    def machine_id=(value : String)
      self.["machineID"] = value
    end

    # The Operating System reported by the node
    def operating_system : String
      self.["operatingSystem"].as(String)
    end

    # :ditto:
    def operating_system! : String
      self.["operatingSystem"].as(String).not_nil!
    end

    # :ditto:
    def operating_system? : String?
      self.["operatingSystem"]?.as(String?)
    end

    # :ditto:
    def operating_system=(value : String)
      self.["operatingSystem"] = value
    end

    # OS Image reported by the node from [[/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)]([/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).))
    def os_image : String
      self.["osImage"].as(String)
    end

    # :ditto:
    def os_image! : String
      self.["osImage"].as(String).not_nil!
    end

    # :ditto:
    def os_image? : String?
      self.["osImage"]?.as(String?)
    end

    # :ditto:
    def os_image=(value : String)
      self.["osImage"] = value
    end

    # SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [[https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html)](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html))
    def system_uuid : String
      self.["systemUUID"].as(String)
    end

    # :ditto:
    def system_uuid! : String
      self.["systemUUID"].as(String).not_nil!
    end

    # :ditto:
    def system_uuid? : String?
      self.["systemUUID"]?.as(String?)
    end

    # :ditto:
    def system_uuid=(value : String)
      self.["systemUUID"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "architecture", accessor: "architecture", nilable: false, read_only: false, default: nil, kind: String },
        { key: "bootID", accessor: "boot_id", nilable: false, read_only: false, default: nil, kind: String },
        { key: "containerRuntimeVersion", accessor: "container_runtime_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "kernelVersion", accessor: "kernel_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "kubeProxyVersion", accessor: "kube_proxy_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "kubeletVersion", accessor: "kubelet_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "machineID", accessor: "machine_id", nilable: false, read_only: false, default: nil, kind: String },
        { key: "operatingSystem", accessor: "operating_system", nilable: false, read_only: false, default: nil, kind: String },
        { key: "osImage", accessor: "os_image", nilable: false, read_only: false, default: nil, kind: String },
        { key: "systemUUID", accessor: "system_uuid", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
