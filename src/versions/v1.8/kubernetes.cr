module ::K8S::Kubernetes
  VERSION = SemanticVersion.parse("1.8.0")

  abstract class Resource
    include JSON::Serializable

    MAPPINGS = [
      {"admissionregistration/v1alpha1", "ExternalAdmissionHookConfiguration", "Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration"},
      {"admissionregistration/v1alpha1", "ExternalAdmissionHookConfigurationList", "Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfigurationList"},
      {"admissionregistration/v1alpha1", "InitializerConfiguration", "Api::Admissionregistration::V1alpha1::InitializerConfiguration"},
      {"admissionregistration/v1alpha1", "InitializerConfigurationList", "Api::Admissionregistration::V1alpha1::InitializerConfigurationList"},
      {"apps/v1beta1", "ControllerRevision", "Api::Apps::V1beta1::ControllerRevision"},
      {"apps/v1beta1", "ControllerRevisionList", "Api::Apps::V1beta1::ControllerRevisionList"},
      {"apps/v1beta1", "Deployment", "Api::Apps::V1beta1::Deployment"},
      {"apps/v1beta1", "DeploymentList", "Api::Apps::V1beta1::DeploymentList"},
      {"apps/v1beta1", "Scale", "Api::Apps::V1beta1::Scale"},
      {"apps/v1beta1", "StatefulSet", "Api::Apps::V1beta1::StatefulSet"},
      {"apps/v1beta1", "StatefulSetList", "Api::Apps::V1beta1::StatefulSetList"},
      {"apps/v1beta2", "ControllerRevision", "Api::Apps::V1beta2::ControllerRevision"},
      {"apps/v1beta2", "ControllerRevisionList", "Api::Apps::V1beta2::ControllerRevisionList"},
      {"apps/v1beta2", "DaemonSet", "Api::Apps::V1beta2::DaemonSet"},
      {"apps/v1beta2", "DaemonSetList", "Api::Apps::V1beta2::DaemonSetList"},
      {"apps/v1beta2", "Deployment", "Api::Apps::V1beta2::Deployment"},
      {"apps/v1beta2", "DeploymentList", "Api::Apps::V1beta2::DeploymentList"},
      {"apps/v1beta2", "ReplicaSet", "Api::Apps::V1beta2::ReplicaSet"},
      {"apps/v1beta2", "ReplicaSetList", "Api::Apps::V1beta2::ReplicaSetList"},
      {"apps/v1beta2", "Scale", "Api::Apps::V1beta2::Scale"},
      {"apps/v1beta2", "StatefulSet", "Api::Apps::V1beta2::StatefulSet"},
      {"apps/v1beta2", "StatefulSetList", "Api::Apps::V1beta2::StatefulSetList"},
      {"authentication/v1", "TokenReview", "Api::Authentication::V1::TokenReview"},
      {"authentication/v1beta1", "TokenReview", "Api::Authentication::V1beta1::TokenReview"},
      {"authorization/v1", "LocalSubjectAccessReview", "Api::Authorization::V1::LocalSubjectAccessReview"},
      {"authorization/v1", "SelfSubjectAccessReview", "Api::Authorization::V1::SelfSubjectAccessReview"},
      {"authorization/v1", "SelfSubjectRulesReview", "Api::Authorization::V1::SelfSubjectRulesReview"},
      {"authorization/v1", "SubjectAccessReview", "Api::Authorization::V1::SubjectAccessReview"},
      {"authorization/v1beta1", "LocalSubjectAccessReview", "Api::Authorization::V1beta1::LocalSubjectAccessReview"},
      {"authorization/v1beta1", "SelfSubjectAccessReview", "Api::Authorization::V1beta1::SelfSubjectAccessReview"},
      {"authorization/v1beta1", "SelfSubjectRulesReview", "Api::Authorization::V1beta1::SelfSubjectRulesReview"},
      {"authorization/v1beta1", "SubjectAccessReview", "Api::Authorization::V1beta1::SubjectAccessReview"},
      {"autoscaling/v1", "HorizontalPodAutoscaler", "Api::Autoscaling::V1::HorizontalPodAutoscaler"},
      {"autoscaling/v1", "HorizontalPodAutoscalerList", "Api::Autoscaling::V1::HorizontalPodAutoscalerList"},
      {"autoscaling/v1", "Scale", "Api::Autoscaling::V1::Scale"},
      {"autoscaling/v2beta1", "HorizontalPodAutoscaler", "Api::Autoscaling::V2beta1::HorizontalPodAutoscaler"},
      {"autoscaling/v2beta1", "HorizontalPodAutoscalerList", "Api::Autoscaling::V2beta1::HorizontalPodAutoscalerList"},
      {"batch/v1", "Job", "Api::Batch::V1::Job"},
      {"batch/v1", "JobList", "Api::Batch::V1::JobList"},
      {"batch/v1beta1", "CronJob", "Api::Batch::V1beta1::CronJob"},
      {"batch/v1beta1", "CronJobList", "Api::Batch::V1beta1::CronJobList"},
      {"batch/v2alpha1", "CronJob", "Api::Batch::V2alpha1::CronJob"},
      {"batch/v2alpha1", "CronJobList", "Api::Batch::V2alpha1::CronJobList"},
      {"certificates/v1beta1", "CertificateSigningRequest", "Api::Certificates::V1beta1::CertificateSigningRequest"},
      {"certificates/v1beta1", "CertificateSigningRequestList", "Api::Certificates::V1beta1::CertificateSigningRequestList"},
      {"v1", "Binding", "Api::Core::V1::Binding"},
      {"v1", "ComponentStatus", "Api::Core::V1::ComponentStatus"},
      {"v1", "ComponentStatusList", "Api::Core::V1::ComponentStatusList"},
      {"v1", "ConfigMap", "Api::Core::V1::ConfigMap"},
      {"v1", "ConfigMapList", "Api::Core::V1::ConfigMapList"},
      {"v1", "Endpoints", "Api::Core::V1::Endpoints"},
      {"v1", "EndpointsList", "Api::Core::V1::EndpointsList"},
      {"v1", "Event", "Api::Core::V1::Event"},
      {"v1", "EventList", "Api::Core::V1::EventList"},
      {"v1", "LimitRange", "Api::Core::V1::LimitRange"},
      {"v1", "LimitRangeList", "Api::Core::V1::LimitRangeList"},
      {"v1", "Namespace", "Api::Core::V1::Namespace"},
      {"v1", "NamespaceList", "Api::Core::V1::NamespaceList"},
      {"v1", "Node", "Api::Core::V1::Node"},
      {"v1", "NodeList", "Api::Core::V1::NodeList"},
      {"v1", "PersistentVolume", "Api::Core::V1::PersistentVolume"},
      {"v1", "PersistentVolumeClaim", "Api::Core::V1::PersistentVolumeClaim"},
      {"v1", "PersistentVolumeClaimList", "Api::Core::V1::PersistentVolumeClaimList"},
      {"v1", "PersistentVolumeList", "Api::Core::V1::PersistentVolumeList"},
      {"v1", "Pod", "Api::Core::V1::Pod"},
      {"v1", "PodList", "Api::Core::V1::PodList"},
      {"v1", "PodTemplate", "Api::Core::V1::PodTemplate"},
      {"v1", "PodTemplateList", "Api::Core::V1::PodTemplateList"},
      {"v1", "ReplicationController", "Api::Core::V1::ReplicationController"},
      {"v1", "ReplicationControllerList", "Api::Core::V1::ReplicationControllerList"},
      {"v1", "ResourceQuota", "Api::Core::V1::ResourceQuota"},
      {"v1", "ResourceQuotaList", "Api::Core::V1::ResourceQuotaList"},
      {"v1", "Secret", "Api::Core::V1::Secret"},
      {"v1", "SecretList", "Api::Core::V1::SecretList"},
      {"v1", "Service", "Api::Core::V1::Service"},
      {"v1", "ServiceAccount", "Api::Core::V1::ServiceAccount"},
      {"v1", "ServiceAccountList", "Api::Core::V1::ServiceAccountList"},
      {"v1", "ServiceList", "Api::Core::V1::ServiceList"},
      {"extensions/v1beta1", "DaemonSet", "Api::Extensions::V1beta1::DaemonSet"},
      {"extensions/v1beta1", "DaemonSetList", "Api::Extensions::V1beta1::DaemonSetList"},
      {"extensions/v1beta1", "Deployment", "Api::Extensions::V1beta1::Deployment"},
      {"extensions/v1beta1", "DeploymentList", "Api::Extensions::V1beta1::DeploymentList"},
      {"extensions/v1beta1", "Ingress", "Api::Extensions::V1beta1::Ingress"},
      {"extensions/v1beta1", "IngressList", "Api::Extensions::V1beta1::IngressList"},
      {"extensions/v1beta1", "NetworkPolicy", "Api::Extensions::V1beta1::NetworkPolicy"},
      {"extensions/v1beta1", "NetworkPolicyList", "Api::Extensions::V1beta1::NetworkPolicyList"},
      {"extensions/v1beta1", "PodSecurityPolicy", "Api::Extensions::V1beta1::PodSecurityPolicy"},
      {"extensions/v1beta1", "PodSecurityPolicyList", "Api::Extensions::V1beta1::PodSecurityPolicyList"},
      {"extensions/v1beta1", "ReplicaSet", "Api::Extensions::V1beta1::ReplicaSet"},
      {"extensions/v1beta1", "ReplicaSetList", "Api::Extensions::V1beta1::ReplicaSetList"},
      {"extensions/v1beta1", "Scale", "Api::Extensions::V1beta1::Scale"},
      {"networking/v1", "NetworkPolicy", "Api::Networking::V1::NetworkPolicy"},
      {"networking/v1", "NetworkPolicyList", "Api::Networking::V1::NetworkPolicyList"},
      {"policy/v1beta1", "Eviction", "Api::Policy::V1beta1::Eviction"},
      {"policy/v1beta1", "PodDisruptionBudget", "Api::Policy::V1beta1::PodDisruptionBudget"},
      {"policy/v1beta1", "PodDisruptionBudgetList", "Api::Policy::V1beta1::PodDisruptionBudgetList"},
      {"rbac/v1", "ClusterRole", "Api::Rbac::V1::ClusterRole"},
      {"rbac/v1", "ClusterRoleBinding", "Api::Rbac::V1::ClusterRoleBinding"},
      {"rbac/v1", "ClusterRoleBindingList", "Api::Rbac::V1::ClusterRoleBindingList"},
      {"rbac/v1", "ClusterRoleList", "Api::Rbac::V1::ClusterRoleList"},
      {"rbac/v1", "Role", "Api::Rbac::V1::Role"},
      {"rbac/v1", "RoleBinding", "Api::Rbac::V1::RoleBinding"},
      {"rbac/v1", "RoleBindingList", "Api::Rbac::V1::RoleBindingList"},
      {"rbac/v1", "RoleList", "Api::Rbac::V1::RoleList"},
      {"rbac/v1alpha1", "ClusterRole", "Api::Rbac::V1alpha1::ClusterRole"},
      {"rbac/v1alpha1", "ClusterRoleBinding", "Api::Rbac::V1alpha1::ClusterRoleBinding"},
      {"rbac/v1alpha1", "ClusterRoleBindingList", "Api::Rbac::V1alpha1::ClusterRoleBindingList"},
      {"rbac/v1alpha1", "ClusterRoleList", "Api::Rbac::V1alpha1::ClusterRoleList"},
      {"rbac/v1alpha1", "Role", "Api::Rbac::V1alpha1::Role"},
      {"rbac/v1alpha1", "RoleBinding", "Api::Rbac::V1alpha1::RoleBinding"},
      {"rbac/v1alpha1", "RoleBindingList", "Api::Rbac::V1alpha1::RoleBindingList"},
      {"rbac/v1alpha1", "RoleList", "Api::Rbac::V1alpha1::RoleList"},
      {"rbac/v1beta1", "ClusterRole", "Api::Rbac::V1beta1::ClusterRole"},
      {"rbac/v1beta1", "ClusterRoleBinding", "Api::Rbac::V1beta1::ClusterRoleBinding"},
      {"rbac/v1beta1", "ClusterRoleBindingList", "Api::Rbac::V1beta1::ClusterRoleBindingList"},
      {"rbac/v1beta1", "ClusterRoleList", "Api::Rbac::V1beta1::ClusterRoleList"},
      {"rbac/v1beta1", "Role", "Api::Rbac::V1beta1::Role"},
      {"rbac/v1beta1", "RoleBinding", "Api::Rbac::V1beta1::RoleBinding"},
      {"rbac/v1beta1", "RoleBindingList", "Api::Rbac::V1beta1::RoleBindingList"},
      {"rbac/v1beta1", "RoleList", "Api::Rbac::V1beta1::RoleList"},
      {"scheduling/v1alpha1", "PriorityClass", "Api::Scheduling::V1alpha1::PriorityClass"},
      {"scheduling/v1alpha1", "PriorityClassList", "Api::Scheduling::V1alpha1::PriorityClassList"},
      {"settings/v1alpha1", "PodPreset", "Api::Settings::V1alpha1::PodPreset"},
      {"settings/v1alpha1", "PodPresetList", "Api::Settings::V1alpha1::PodPresetList"},
      {"storage/v1", "StorageClass", "Api::Storage::V1::StorageClass"},
      {"storage/v1", "StorageClassList", "Api::Storage::V1::StorageClassList"},
      {"storage/v1beta1", "StorageClass", "Api::Storage::V1beta1::StorageClass"},
      {"storage/v1beta1", "StorageClassList", "Api::Storage::V1beta1::StorageClassList"},
      {"apiextensions/v1beta1", "CustomResourceDefinition", "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition"},
      {"apiextensions/v1beta1", "CustomResourceDefinitionList", "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionList"},
      {"apiregistration/v1beta1", "APIService", "KubeAggregator::Apis::Apiregistration::V1beta1::APIService"},
      {"apiregistration/v1beta1", "APIServiceList", "KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceList"},
    ]

    k8s_json_discriminator(MAPPINGS)
    k8s_yaml_discriminator(MAPPINGS)
  end
end
