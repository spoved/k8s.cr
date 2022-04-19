module ::K8S::Kubernetes
  VERSION       = SemanticVersion.parse("1.22.0")
  VERSION_MINOR =  1
  VERSION_MAJOR = 22

  abstract struct Resource
    MAPPINGS = [
      {"admissionregistration/v1", "MutatingWebhookConfiguration", K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration},
      {"admissionregistration/v1", "MutatingWebhookConfigurationList", K8S::Api::Admissionregistration::V1::MutatingWebhookConfigurationList},
      {"admissionregistration/v1", "ValidatingWebhookConfiguration", K8S::Api::Admissionregistration::V1::ValidatingWebhookConfiguration},
      {"admissionregistration/v1", "ValidatingWebhookConfigurationList", K8S::Api::Admissionregistration::V1::ValidatingWebhookConfigurationList},
      {"apiserverinternal/v1alpha1", "StorageVersion", K8S::Api::Apiserverinternal::V1alpha1::StorageVersion},
      {"apiserverinternal/v1alpha1", "StorageVersionList", K8S::Api::Apiserverinternal::V1alpha1::StorageVersionList},
      {"apps/v1", "ControllerRevision", K8S::Api::Apps::V1::ControllerRevision},
      {"apps/v1", "ControllerRevisionList", K8S::Api::Apps::V1::ControllerRevisionList},
      {"apps/v1", "DaemonSet", K8S::Api::Apps::V1::DaemonSet},
      {"apps/v1", "DaemonSetList", K8S::Api::Apps::V1::DaemonSetList},
      {"apps/v1", "Deployment", K8S::Api::Apps::V1::Deployment},
      {"apps/v1", "DeploymentList", K8S::Api::Apps::V1::DeploymentList},
      {"apps/v1", "ReplicaSet", K8S::Api::Apps::V1::ReplicaSet},
      {"apps/v1", "ReplicaSetList", K8S::Api::Apps::V1::ReplicaSetList},
      {"apps/v1", "StatefulSet", K8S::Api::Apps::V1::StatefulSet},
      {"apps/v1", "StatefulSetList", K8S::Api::Apps::V1::StatefulSetList},
      {"authentication/v1", "TokenRequest", K8S::Api::Authentication::V1::TokenRequest},
      {"authentication/v1", "TokenReview", K8S::Api::Authentication::V1::TokenReview},
      {"authorization/v1", "LocalSubjectAccessReview", K8S::Api::Authorization::V1::LocalSubjectAccessReview},
      {"authorization/v1", "SelfSubjectAccessReview", K8S::Api::Authorization::V1::SelfSubjectAccessReview},
      {"authorization/v1", "SelfSubjectRulesReview", K8S::Api::Authorization::V1::SelfSubjectRulesReview},
      {"authorization/v1", "SubjectAccessReview", K8S::Api::Authorization::V1::SubjectAccessReview},
      {"autoscaling/v1", "HorizontalPodAutoscaler", K8S::Api::Autoscaling::V1::HorizontalPodAutoscaler},
      {"autoscaling/v1", "HorizontalPodAutoscalerList", K8S::Api::Autoscaling::V1::HorizontalPodAutoscalerList},
      {"autoscaling/v1", "Scale", K8S::Api::Autoscaling::V1::Scale},
      {"autoscaling/v2beta1", "HorizontalPodAutoscaler", K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscaler},
      {"autoscaling/v2beta1", "HorizontalPodAutoscalerList", K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerList},
      {"autoscaling/v2beta2", "HorizontalPodAutoscaler", K8S::Api::Autoscaling::V2beta2::HorizontalPodAutoscaler},
      {"autoscaling/v2beta2", "HorizontalPodAutoscalerList", K8S::Api::Autoscaling::V2beta2::HorizontalPodAutoscalerList},
      {"batch/v1", "CronJob", K8S::Api::Batch::V1::CronJob},
      {"batch/v1", "CronJobList", K8S::Api::Batch::V1::CronJobList},
      {"batch/v1", "Job", K8S::Api::Batch::V1::Job},
      {"batch/v1", "JobList", K8S::Api::Batch::V1::JobList},
      {"batch/v1beta1", "CronJob", K8S::Api::Batch::V1beta1::CronJob},
      {"batch/v1beta1", "CronJobList", K8S::Api::Batch::V1beta1::CronJobList},
      {"certificates/v1", "CertificateSigningRequest", K8S::Api::Certificates::V1::CertificateSigningRequest},
      {"certificates/v1", "CertificateSigningRequestList", K8S::Api::Certificates::V1::CertificateSigningRequestList},
      {"coordination/v1", "Lease", K8S::Api::Coordination::V1::Lease},
      {"coordination/v1", "LeaseList", K8S::Api::Coordination::V1::LeaseList},
      {"v1", "Binding", K8S::Api::Core::V1::Binding},
      {"v1", "ComponentStatus", K8S::Api::Core::V1::ComponentStatus},
      {"v1", "ComponentStatusList", K8S::Api::Core::V1::ComponentStatusList},
      {"v1", "ConfigMap", K8S::Api::Core::V1::ConfigMap},
      {"v1", "ConfigMapList", K8S::Api::Core::V1::ConfigMapList},
      {"v1", "Endpoints", K8S::Api::Core::V1::Endpoints},
      {"v1", "EndpointsList", K8S::Api::Core::V1::EndpointsList},
      {"v1", "Event", K8S::Api::Core::V1::Event},
      {"v1", "EventList", K8S::Api::Core::V1::EventList},
      {"v1", "LimitRange", K8S::Api::Core::V1::LimitRange},
      {"v1", "LimitRangeList", K8S::Api::Core::V1::LimitRangeList},
      {"v1", "Namespace", K8S::Api::Core::V1::Namespace},
      {"v1", "NamespaceList", K8S::Api::Core::V1::NamespaceList},
      {"v1", "Node", K8S::Api::Core::V1::Node},
      {"v1", "NodeList", K8S::Api::Core::V1::NodeList},
      {"v1", "PersistentVolume", K8S::Api::Core::V1::PersistentVolume},
      {"v1", "PersistentVolumeClaim", K8S::Api::Core::V1::PersistentVolumeClaim},
      {"v1", "PersistentVolumeClaimList", K8S::Api::Core::V1::PersistentVolumeClaimList},
      {"v1", "PersistentVolumeList", K8S::Api::Core::V1::PersistentVolumeList},
      {"v1", "Pod", K8S::Api::Core::V1::Pod},
      {"v1", "PodList", K8S::Api::Core::V1::PodList},
      {"v1", "PodTemplate", K8S::Api::Core::V1::PodTemplate},
      {"v1", "PodTemplateList", K8S::Api::Core::V1::PodTemplateList},
      {"v1", "ReplicationController", K8S::Api::Core::V1::ReplicationController},
      {"v1", "ReplicationControllerList", K8S::Api::Core::V1::ReplicationControllerList},
      {"v1", "ResourceQuota", K8S::Api::Core::V1::ResourceQuota},
      {"v1", "ResourceQuotaList", K8S::Api::Core::V1::ResourceQuotaList},
      {"v1", "Secret", K8S::Api::Core::V1::Secret},
      {"v1", "SecretList", K8S::Api::Core::V1::SecretList},
      {"v1", "Service", K8S::Api::Core::V1::Service},
      {"v1", "ServiceAccount", K8S::Api::Core::V1::ServiceAccount},
      {"v1", "ServiceAccountList", K8S::Api::Core::V1::ServiceAccountList},
      {"v1", "ServiceList", K8S::Api::Core::V1::ServiceList},
      {"discovery/v1", "EndpointSlice", K8S::Api::Discovery::V1::EndpointSlice},
      {"discovery/v1", "EndpointSliceList", K8S::Api::Discovery::V1::EndpointSliceList},
      {"discovery/v1beta1", "EndpointSlice", K8S::Api::Discovery::V1beta1::EndpointSlice},
      {"discovery/v1beta1", "EndpointSliceList", K8S::Api::Discovery::V1beta1::EndpointSliceList},
      {"events/v1", "Event", K8S::Api::Events::V1::Event},
      {"events/v1", "EventList", K8S::Api::Events::V1::EventList},
      {"events/v1beta1", "Event", K8S::Api::Events::V1beta1::Event},
      {"events/v1beta1", "EventList", K8S::Api::Events::V1beta1::EventList},
      {"flowcontrol/v1beta1", "FlowSchema", K8S::Api::Flowcontrol::V1beta1::FlowSchema},
      {"flowcontrol/v1beta1", "FlowSchemaList", K8S::Api::Flowcontrol::V1beta1::FlowSchemaList},
      {"flowcontrol/v1beta1", "PriorityLevelConfiguration", K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfiguration},
      {"flowcontrol/v1beta1", "PriorityLevelConfigurationList", K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationList},
      {"networking/v1", "Ingress", K8S::Api::Networking::V1::Ingress},
      {"networking/v1", "IngressClass", K8S::Api::Networking::V1::IngressClass},
      {"networking/v1", "IngressClassList", K8S::Api::Networking::V1::IngressClassList},
      {"networking/v1", "IngressList", K8S::Api::Networking::V1::IngressList},
      {"networking/v1", "NetworkPolicy", K8S::Api::Networking::V1::NetworkPolicy},
      {"networking/v1", "NetworkPolicyList", K8S::Api::Networking::V1::NetworkPolicyList},
      {"node/v1", "RuntimeClass", K8S::Api::Node::V1::RuntimeClass},
      {"node/v1", "RuntimeClassList", K8S::Api::Node::V1::RuntimeClassList},
      {"node/v1alpha1", "RuntimeClass", K8S::Api::Node::V1alpha1::RuntimeClass},
      {"node/v1alpha1", "RuntimeClassList", K8S::Api::Node::V1alpha1::RuntimeClassList},
      {"node/v1beta1", "RuntimeClass", K8S::Api::Node::V1beta1::RuntimeClass},
      {"node/v1beta1", "RuntimeClassList", K8S::Api::Node::V1beta1::RuntimeClassList},
      {"policy/v1", "Eviction", K8S::Api::Policy::V1::Eviction},
      {"policy/v1", "PodDisruptionBudget", K8S::Api::Policy::V1::PodDisruptionBudget},
      {"policy/v1", "PodDisruptionBudgetList", K8S::Api::Policy::V1::PodDisruptionBudgetList},
      {"policy/v1beta1", "PodDisruptionBudget", K8S::Api::Policy::V1beta1::PodDisruptionBudget},
      {"policy/v1beta1", "PodDisruptionBudgetList", K8S::Api::Policy::V1beta1::PodDisruptionBudgetList},
      {"policy/v1beta1", "PodSecurityPolicy", K8S::Api::Policy::V1beta1::PodSecurityPolicy},
      {"policy/v1beta1", "PodSecurityPolicyList", K8S::Api::Policy::V1beta1::PodSecurityPolicyList},
      {"rbac/v1", "ClusterRole", K8S::Api::Rbac::V1::ClusterRole},
      {"rbac/v1", "ClusterRoleBinding", K8S::Api::Rbac::V1::ClusterRoleBinding},
      {"rbac/v1", "ClusterRoleBindingList", K8S::Api::Rbac::V1::ClusterRoleBindingList},
      {"rbac/v1", "ClusterRoleList", K8S::Api::Rbac::V1::ClusterRoleList},
      {"rbac/v1", "Role", K8S::Api::Rbac::V1::Role},
      {"rbac/v1", "RoleBinding", K8S::Api::Rbac::V1::RoleBinding},
      {"rbac/v1", "RoleBindingList", K8S::Api::Rbac::V1::RoleBindingList},
      {"rbac/v1", "RoleList", K8S::Api::Rbac::V1::RoleList},
      {"rbac/v1alpha1", "ClusterRole", K8S::Api::Rbac::V1alpha1::ClusterRole},
      {"rbac/v1alpha1", "ClusterRoleBinding", K8S::Api::Rbac::V1alpha1::ClusterRoleBinding},
      {"rbac/v1alpha1", "ClusterRoleBindingList", K8S::Api::Rbac::V1alpha1::ClusterRoleBindingList},
      {"rbac/v1alpha1", "ClusterRoleList", K8S::Api::Rbac::V1alpha1::ClusterRoleList},
      {"rbac/v1alpha1", "Role", K8S::Api::Rbac::V1alpha1::Role},
      {"rbac/v1alpha1", "RoleBinding", K8S::Api::Rbac::V1alpha1::RoleBinding},
      {"rbac/v1alpha1", "RoleBindingList", K8S::Api::Rbac::V1alpha1::RoleBindingList},
      {"rbac/v1alpha1", "RoleList", K8S::Api::Rbac::V1alpha1::RoleList},
      {"scheduling/v1", "PriorityClass", K8S::Api::Scheduling::V1::PriorityClass},
      {"scheduling/v1", "PriorityClassList", K8S::Api::Scheduling::V1::PriorityClassList},
      {"scheduling/v1alpha1", "PriorityClass", K8S::Api::Scheduling::V1alpha1::PriorityClass},
      {"scheduling/v1alpha1", "PriorityClassList", K8S::Api::Scheduling::V1alpha1::PriorityClassList},
      {"storage/v1", "CSIDriver", K8S::Api::Storage::V1::CSIDriver},
      {"storage/v1", "CSIDriverList", K8S::Api::Storage::V1::CSIDriverList},
      {"storage/v1", "CSINode", K8S::Api::Storage::V1::CSINode},
      {"storage/v1", "CSINodeList", K8S::Api::Storage::V1::CSINodeList},
      {"storage/v1", "StorageClass", K8S::Api::Storage::V1::StorageClass},
      {"storage/v1", "StorageClassList", K8S::Api::Storage::V1::StorageClassList},
      {"storage/v1", "VolumeAttachment", K8S::Api::Storage::V1::VolumeAttachment},
      {"storage/v1", "VolumeAttachmentList", K8S::Api::Storage::V1::VolumeAttachmentList},
      {"storage/v1alpha1", "CSIStorageCapacity", K8S::Api::Storage::V1alpha1::CSIStorageCapacity},
      {"storage/v1alpha1", "CSIStorageCapacityList", K8S::Api::Storage::V1alpha1::CSIStorageCapacityList},
      {"storage/v1alpha1", "VolumeAttachment", K8S::Api::Storage::V1alpha1::VolumeAttachment},
      {"storage/v1alpha1", "VolumeAttachmentList", K8S::Api::Storage::V1alpha1::VolumeAttachmentList},
      {"storage/v1beta1", "CSIStorageCapacity", K8S::Api::Storage::V1beta1::CSIStorageCapacity},
      {"storage/v1beta1", "CSIStorageCapacityList", K8S::Api::Storage::V1beta1::CSIStorageCapacityList},
      {"apiextensions/v1", "CustomResourceDefinition", K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition},
      {"apiextensions/v1", "CustomResourceDefinitionList", K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionList},
      {"apiregistration/v1", "APIService", K8S::KubeAggregator::Apis::Apiregistration::V1::APIService},
      {"apiregistration/v1", "APIServiceList", K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceList},
      {"v1", "List", K8S::Api::Core::V1::List},
    ]
  end
end
