# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1beta1::CSIDriverSpec; end

module K8S
  # Namespace holding the types for `Api::Storage::V1beta1::CSIDriverSpec`.
  module Types::Api::Storage::V1beta1::CSIDriverSpec
    alias ValueType = ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.
    abstract def attach_required : ::Bool?
    # :ditto:
    abstract def attach_required! : ::Bool
    # :ditto:
    abstract def attach_required? : ::Bool?
    # :ditto:
    abstract def attach_required=(value : ::Bool?)
    # If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID))](["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)))
    abstract def pod_info_on_mount : ::Bool?
    # :ditto:
    abstract def pod_info_on_mount! : ::Bool
    # :ditto:
    abstract def pod_info_on_mount? : ::Bool?
    # :ditto:
    abstract def pod_info_on_mount=(value : ::Bool?)
  end

  # CSIDriverSpec is the specification of a CSIDriver.
  @[::K8S::Properties(
    attach_required: {key: "attachRequired", accessor: "attach_required", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_info_on_mount: {key: "podInfoOnMount", accessor: "pod_info_on_mount", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [\"csi.storage.k8s.io/pod.name\": pod.Name \"csi.storage.k8s.io/pod.namespace\": pod.Namespace \"csi.storage.k8s.io/pod.uid\": string(pod.UID)](\"csi.storage.k8s.io/pod.name\": pod.Name \"csi.storage.k8s.io/pod.namespace\": pod.Namespace \"csi.storage.k8s.io/pod.uid\": string(pod.UID))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1beta1::CSIDriverSpec < ::K8S::Types::Api::Storage::V1beta1::CSIDriverSpec::Instance
    include ::K8S::Types::Api::Storage::V1beta1::CSIDriverSpec
    include ::K8S::Kubernetes::Object

    # attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.
    def attach_required : ::Bool?
      self.["attachRequired"].as(::Bool?)
    end

    # :ditto:
    def attach_required! : ::Bool
      self.["attachRequired"].as(::Bool?).not_nil!
    end

    # :ditto:
    def attach_required? : ::Bool?
      self.["attachRequired"]?.as(::Bool?)
    end

    # :ditto:
    def attach_required=(value : ::Bool?)
      self.["attachRequired"] = value
    end

    # If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID))](["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID)))
    def pod_info_on_mount : ::Bool?
      self.["podInfoOnMount"].as(::Bool?)
    end

    # :ditto:
    def pod_info_on_mount! : ::Bool
      self.["podInfoOnMount"].as(::Bool?).not_nil!
    end

    # :ditto:
    def pod_info_on_mount? : ::Bool?
      self.["podInfoOnMount"]?.as(::Bool?)
    end

    # :ditto:
    def pod_info_on_mount=(value : ::Bool?)
      self.["podInfoOnMount"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "attachRequired", accessor: "attach_required", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "podInfoOnMount", accessor: "pod_info_on_mount", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
