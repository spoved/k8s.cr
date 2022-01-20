# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::CSIDriverSpec; end

require "./token_request"

module K8S
  # Namespace holding the types for `Api::Storage::V1::CSIDriverSpec`.
  module Types::Api::Storage::V1::CSIDriverSpec
    alias ValueType = ::Bool | String | ::Array(::K8S::Api::Storage::V1::TokenRequest) | ::Set(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.
    #
    # This field is immutable.
    abstract def attach_required : ::Bool?
    # :ditto:
    abstract def attach_required! : ::Bool
    # :ditto:
    abstract def attach_required? : ::Bool?
    # :ditto:
    abstract def attach_required=(value : ::Bool?)
    # Defines if the underlying volume supports changing ownership and permission of the volume before being mounted. Refer to the specific FSGroupPolicy values for additional details.
    #
    # This field is immutable.
    #
    # Defaults to ReadWriteOnceWithFSType, which will examine each volume to determine if Kubernetes should modify ownership and permissions of the volume. With the default policy the defined fsGroup will only be applied if a fstype is defined and the volume's access mode contains ReadWriteOnce.
    abstract def fs_group_policy : String?
    # :ditto:
    abstract def fs_group_policy! : String
    # :ditto:
    abstract def fs_group_policy? : String?
    # :ditto:
    abstract def fs_group_policy=(value : String?)
    # If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume)](["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume))
    #                                 defined by a CSIVolumeSource, otherwise "false"
    #
    # [["csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.]("csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.)](["csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.]("csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.))
    #
    # This field is immutable.
    abstract def pod_info_on_mount : ::Bool?
    # :ditto:
    abstract def pod_info_on_mount! : ::Bool
    # :ditto:
    abstract def pod_info_on_mount? : ::Bool?
    # :ditto:
    abstract def pod_info_on_mount=(value : ::Bool?)
    # RequiresRepublish indicates the CSI driver wants `NodePublishVolume` being periodically called to reflect any possible change in the mounted volume. This field defaults to false.
    #
    # Note: After a successful initial NodePublishVolume call, subsequent calls to NodePublishVolume should only update the contents of the volume. New mount points will not be seen by a running container.
    abstract def requires_republish : ::Bool?
    # :ditto:
    abstract def requires_republish! : ::Bool
    # :ditto:
    abstract def requires_republish? : ::Bool?
    # :ditto:
    abstract def requires_republish=(value : ::Bool?)
    # If set to true, storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the storage capacity that the driver deployment will report by creating CSIStorageCapacity objects with capacity information.
    #
    # The check can be enabled immediately when deploying a driver. In that case, provisioning new volumes with late binding will pause until the driver deployment has published some suitable CSIStorageCapacity object.
    #
    # Alternatively, the driver can be deployed with the field unset or false and it can be flipped later when storage capacity information has been published.
    #
    # This field was immutable in Kubernetes <= 1.22 and now is mutable.
    #
    # This is a beta field and only available when the CSIStorageCapacity feature is enabled. The default is false.
    abstract def storage_capacity : ::Bool?
    # :ditto:
    abstract def storage_capacity! : ::Bool
    # :ditto:
    abstract def storage_capacity? : ::Bool?
    # :ditto:
    abstract def storage_capacity=(value : ::Bool?)
    # TokenRequests indicates the CSI driver needs pods' service account tokens it is mounting volume for to do necessary authentication. Kubelet will pass the tokens in VolumeContext in the CSI NodePublishVolume calls. The CSI driver should parse and validate the following VolumeContext: [["csi.storage.k8s.io/serviceAccount.tokens": {]("csi.storage.k8s.io/serviceAccount.tokens": {)](["csi.storage.k8s.io/serviceAccount.tokens": {]("csi.storage.k8s.io/serviceAccount.tokens": {))
    #   "<audience>": {
    #     "token": <token>,
    #     "expirationTimestamp": <expiration timestamp in RFC3339>,
    #   },
    #   ...
    # }
    #
    # Note: Audience in each TokenRequest should be different and at most one token is empty string. To receive a new token after expiry, RequiresRepublish can be used to trigger NodePublishVolume periodically.
    abstract def token_requests : ::Array(::K8S::Api::Storage::V1::TokenRequest)?
    # :ditto:
    abstract def token_requests! : ::Array(::K8S::Api::Storage::V1::TokenRequest)
    # :ditto:
    abstract def token_requests? : ::Array(::K8S::Api::Storage::V1::TokenRequest)?
    # :ditto:
    abstract def token_requests=(value : ::Array(::K8S::Api::Storage::V1::TokenRequest)?)
    # volumeLifecycleModes defines what kind of volumes this CSI volume driver supports. The default if the list is empty is "Persistent", which is the usage defined by the CSI specification and implemented in Kubernetes via the usual [[PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.](PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.)]([PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.](PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.))
    #
    # This field is immutable.
    abstract def volume_lifecycle_modes : ::Set(String)?
    # :ditto:
    abstract def volume_lifecycle_modes! : ::Set(String)
    # :ditto:
    abstract def volume_lifecycle_modes? : ::Set(String)?
    # :ditto:
    abstract def volume_lifecycle_modes=(value : ::Set(String)?)
  end

  # CSIDriverSpec is the specification of a CSIDriver.
  @[::K8S::Properties(
    attach_required: {key: "attachRequired", accessor: "attach_required", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.\n\nThis field is immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_group_policy: {key: "fsGroupPolicy", accessor: "fs_group_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Defines if the underlying volume supports changing ownership and permission of the volume before being mounted. Refer to the specific FSGroupPolicy values for additional details.\n\nThis field is immutable.\n\nDefaults to ReadWriteOnceWithFSType, which will examine each volume to determine if Kubernetes should modify ownership and permissions of the volume. With the default policy the defined fsGroup will only be applied if a fstype is defined and the volume's access mode contains ReadWriteOnce.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_info_on_mount: {key: "podInfoOnMount", accessor: "pod_info_on_mount", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [\"csi.storage.k8s.io/pod.name\": pod.Name \"csi.storage.k8s.io/pod.namespace\": pod.Namespace \"csi.storage.k8s.io/pod.uid\": string(pod.UID) \"csi.storage.k8s.io/ephemeral\": \"true\" if the volume is an ephemeral inline volume](\"csi.storage.k8s.io/pod.name\": pod.Name \"csi.storage.k8s.io/pod.namespace\": pod.Namespace \"csi.storage.k8s.io/pod.uid\": string(pod.UID) \"csi.storage.k8s.io/ephemeral\": \"true\" if the volume is an ephemeral inline volume)\n                                defined by a CSIVolumeSource, otherwise \"false\"\n\n[\"csi.storage.k8s.io/ephemeral\" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the \"Persistent\" and \"Ephemeral\" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.](\"csi.storage.k8s.io/ephemeral\" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the \"Persistent\" and \"Ephemeral\" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.)\n\nThis field is immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    requires_republish: {key: "requiresRepublish", accessor: "requires_republish", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "RequiresRepublish indicates the CSI driver wants `NodePublishVolume` being periodically called to reflect any possible change in the mounted volume. This field defaults to false.\n\nNote: After a successful initial NodePublishVolume call, subsequent calls to NodePublishVolume should only update the contents of the volume. New mount points will not be seen by a running container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_capacity: {key: "storageCapacity", accessor: "storage_capacity", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If set to true, storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the storage capacity that the driver deployment will report by creating CSIStorageCapacity objects with capacity information.\n\nThe check can be enabled immediately when deploying a driver. In that case, provisioning new volumes with late binding will pause until the driver deployment has published some suitable CSIStorageCapacity object.\n\nAlternatively, the driver can be deployed with the field unset or false and it can be flipped later when storage capacity information has been published.\n\nThis field was immutable in Kubernetes <= 1.22 and now is mutable.\n\nThis is a beta field and only available when the CSIStorageCapacity feature is enabled. The default is false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    token_requests: {key: "tokenRequests", accessor: "token_requests", kind: "::Array(::K8S::Api::Storage::V1::TokenRequest)", nilable: true, default: nil, read_only: false, description: "TokenRequests indicates the CSI driver needs pods' service account tokens it is mounting volume for to do necessary authentication. Kubelet will pass the tokens in VolumeContext in the CSI NodePublishVolume calls. The CSI driver should parse and validate the following VolumeContext: [\"csi.storage.k8s.io/serviceAccount.tokens\": {](\"csi.storage.k8s.io/serviceAccount.tokens\": {)\n  \"<audience>\": {\n    \"token\": <token>,\n    \"expirationTimestamp\": <expiration timestamp in RFC3339>,\n  },\n  ...\n}\n\nNote: Audience in each TokenRequest should be different and at most one token is empty string. To receive a new token after expiry, RequiresRepublish can be used to trigger NodePublishVolume periodically.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    volume_lifecycle_modes: {key: "volumeLifecycleModes", accessor: "volume_lifecycle_modes", kind: "::Set(String)", nilable: true, default: nil, read_only: false, description: "volumeLifecycleModes defines what kind of volumes this CSI volume driver supports. The default if the list is empty is \"Persistent\", which is the usage defined by the CSI specification and implemented in Kubernetes via the usual [PV/PVC mechanism. The other mode is \"Ephemeral\". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.](PV/PVC mechanism. The other mode is \"Ephemeral\". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.)\n\nThis field is immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1::CSIDriverSpec < ::K8S::Types::Api::Storage::V1::CSIDriverSpec::Instance
    include ::K8S::Types::Api::Storage::V1::CSIDriverSpec
    include ::K8S::Kubernetes::Object

    # attachRequired indicates this CSI volume driver requires an attach operation (because it implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach detach controller should call the attach volume interface which checks the volumeattachment status and waits until the volume is attached before proceeding to mounting. The CSI external-attacher coordinates with CSI volume driver and updates the volumeattachment status when the attach operation is complete. If the CSIDriverRegistry feature gate is enabled and the value is specified to false, the attach operation will be skipped. Otherwise the attach operation will be called.
    #
    # This field is immutable.
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

    # Defines if the underlying volume supports changing ownership and permission of the volume before being mounted. Refer to the specific FSGroupPolicy values for additional details.
    #
    # This field is immutable.
    #
    # Defaults to ReadWriteOnceWithFSType, which will examine each volume to determine if Kubernetes should modify ownership and permissions of the volume. With the default policy the defined fsGroup will only be applied if a fstype is defined and the volume's access mode contains ReadWriteOnce.
    def fs_group_policy : String?
      self.["fsGroupPolicy"].as(String?)
    end

    # :ditto:
    def fs_group_policy! : String
      self.["fsGroupPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def fs_group_policy? : String?
      self.["fsGroupPolicy"]?.as(String?)
    end

    # :ditto:
    def fs_group_policy=(value : String?)
      self.["fsGroupPolicy"] = value
    end

    # If set to true, podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations. If set to false, pod information will not be passed on mount. Default is false. The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI driver is responsible for parsing and validating the information passed in as VolumeContext. The following VolumeConext will be passed if podInfoOnMount is set to true. This list might grow, but the prefix will be used. [["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume)](["csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume]("csi.storage.k8s.io/pod.name": pod.Name "csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid": string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume))
    #                                 defined by a CSIVolumeSource, otherwise "false"
    #
    # [["csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.]("csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.)](["csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.]("csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode. Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when deployed on such a cluster and the deployment determines which mode that is, for example via a command line parameter of the driver.))
    #
    # This field is immutable.
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

    # RequiresRepublish indicates the CSI driver wants `NodePublishVolume` being periodically called to reflect any possible change in the mounted volume. This field defaults to false.
    #
    # Note: After a successful initial NodePublishVolume call, subsequent calls to NodePublishVolume should only update the contents of the volume. New mount points will not be seen by a running container.
    def requires_republish : ::Bool?
      self.["requiresRepublish"].as(::Bool?)
    end

    # :ditto:
    def requires_republish! : ::Bool
      self.["requiresRepublish"].as(::Bool?).not_nil!
    end

    # :ditto:
    def requires_republish? : ::Bool?
      self.["requiresRepublish"]?.as(::Bool?)
    end

    # :ditto:
    def requires_republish=(value : ::Bool?)
      self.["requiresRepublish"] = value
    end

    # If set to true, storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the storage capacity that the driver deployment will report by creating CSIStorageCapacity objects with capacity information.
    #
    # The check can be enabled immediately when deploying a driver. In that case, provisioning new volumes with late binding will pause until the driver deployment has published some suitable CSIStorageCapacity object.
    #
    # Alternatively, the driver can be deployed with the field unset or false and it can be flipped later when storage capacity information has been published.
    #
    # This field was immutable in Kubernetes <= 1.22 and now is mutable.
    #
    # This is a beta field and only available when the CSIStorageCapacity feature is enabled. The default is false.
    def storage_capacity : ::Bool?
      self.["storageCapacity"].as(::Bool?)
    end

    # :ditto:
    def storage_capacity! : ::Bool
      self.["storageCapacity"].as(::Bool?).not_nil!
    end

    # :ditto:
    def storage_capacity? : ::Bool?
      self.["storageCapacity"]?.as(::Bool?)
    end

    # :ditto:
    def storage_capacity=(value : ::Bool?)
      self.["storageCapacity"] = value
    end

    # TokenRequests indicates the CSI driver needs pods' service account tokens it is mounting volume for to do necessary authentication. Kubelet will pass the tokens in VolumeContext in the CSI NodePublishVolume calls. The CSI driver should parse and validate the following VolumeContext: [["csi.storage.k8s.io/serviceAccount.tokens": {]("csi.storage.k8s.io/serviceAccount.tokens": {)](["csi.storage.k8s.io/serviceAccount.tokens": {]("csi.storage.k8s.io/serviceAccount.tokens": {))
    #   "<audience>": {
    #     "token": <token>,
    #     "expirationTimestamp": <expiration timestamp in RFC3339>,
    #   },
    #   ...
    # }
    #
    # Note: Audience in each TokenRequest should be different and at most one token is empty string. To receive a new token after expiry, RequiresRepublish can be used to trigger NodePublishVolume periodically.
    def token_requests : ::Array(::K8S::Api::Storage::V1::TokenRequest)?
      self.["tokenRequests"].as(::Array(::K8S::Api::Storage::V1::TokenRequest)?)
    end

    # :ditto:
    def token_requests! : ::Array(::K8S::Api::Storage::V1::TokenRequest)
      self.["tokenRequests"].as(::Array(::K8S::Api::Storage::V1::TokenRequest)?).not_nil!
    end

    # :ditto:
    def token_requests? : ::Array(::K8S::Api::Storage::V1::TokenRequest)?
      self.["tokenRequests"]?.as(::Array(::K8S::Api::Storage::V1::TokenRequest)?)
    end

    # :ditto:
    def token_requests=(value : ::Array(::K8S::Api::Storage::V1::TokenRequest)?)
      self.["tokenRequests"] = value
    end

    # volumeLifecycleModes defines what kind of volumes this CSI volume driver supports. The default if the list is empty is "Persistent", which is the usage defined by the CSI specification and implemented in Kubernetes via the usual [[PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.](PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.)]([PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.](PV/PVC mechanism. The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume. For more information about implementing this mode, see https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support one or more of these modes and more modes may be added in the future. This field is beta.))
    #
    # This field is immutable.
    def volume_lifecycle_modes : ::Set(String)?
      self.["volumeLifecycleModes"].as(::Set(String)?)
    end

    # :ditto:
    def volume_lifecycle_modes! : ::Set(String)
      self.["volumeLifecycleModes"].as(::Set(String)?).not_nil!
    end

    # :ditto:
    def volume_lifecycle_modes? : ::Set(String)?
      self.["volumeLifecycleModes"]?.as(::Set(String)?)
    end

    # :ditto:
    def volume_lifecycle_modes=(value : ::Set(String)?)
      self.["volumeLifecycleModes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "attachRequired", accessor: "attach_required", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "fsGroupPolicy", accessor: "fs_group_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "podInfoOnMount", accessor: "pod_info_on_mount", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "requiresRepublish", accessor: "requires_republish", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "storageCapacity", accessor: "storage_capacity", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "tokenRequests", accessor: "token_requests", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Storage::V1::TokenRequest) },
        { key: "volumeLifecycleModes", accessor: "volume_lifecycle_modes", nilable: true, read_only: false, default: nil, kind: ::Set(String) },
      ])
end
  end
end
