# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NodeSystemInfo",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "architecture", kind: String, key: "architecture", nilable: false, read_only: false, description: "The Architecture reported by the node"},
    {name: "boot_id", kind: String, key: "bootID", nilable: false, read_only: false, description: "Boot ID reported by the node."},
    {name: "container_runtime_version", kind: String, key: "containerRuntimeVersion", nilable: false, read_only: false, description: "ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0)."},
    {name: "kernel_version", kind: String, key: "kernelVersion", nilable: false, read_only: false, description: "Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64)."},
    {name: "kube_proxy_version", kind: String, key: "kubeProxyVersion", nilable: false, read_only: false, description: "KubeProxy Version reported by the node."},
    {name: "kubelet_version", kind: String, key: "kubeletVersion", nilable: false, read_only: false, description: "Kubelet Version reported by the node."},
    {name: "machine_id", kind: String, key: "machineID", nilable: false, read_only: false, description: "MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)"},
    {name: "operating_system", kind: String, key: "operatingSystem", nilable: false, read_only: false, description: "The Operating System reported by the node"},
    {name: "os_image", kind: String, key: "osImage", nilable: false, read_only: false, description: "OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)"},
    {name: "system_uuid", kind: String, key: "systemUUID", nilable: false, read_only: false, description: "SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid](https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid)"},

  ]
)
