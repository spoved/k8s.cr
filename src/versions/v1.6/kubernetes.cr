module ::K8S::Kubernetes
  VERSION = SemanticVersion.parse("1.6.0")

  abstract class Resource
    include JSON::Serializable

    MAPPINGS = [
      {"v1", "Binding", Resources::V1::Binding},
      {"v1", "ComponentStatus", Resources::V1::ComponentStatus},
      {"v1", "ConfigMap", Resources::V1::ConfigMap},
      {"v1", "Endpoints", Resources::V1::Endpoints},
      {"v1", "Event", Resources::V1::Event},
      {"v1", "LimitRange", Resources::V1::LimitRange},
      {"v1", "Namespace", Resources::V1::Namespace},
      {"v1", "Node", Resources::V1::Node},
      {"v1", "PersistentVolume", Resources::V1::PersistentVolume},
      {"v1", "PersistentVolumeClaim", Resources::V1::PersistentVolumeClaim},
      {"v1", "Pod", Resources::V1::Pod},
      {"v1", "PodTemplate", Resources::V1::PodTemplate},
      {"v1", "ReplicationController", Resources::V1::ReplicationController},
      {"v1", "ResourceQuota", Resources::V1::ResourceQuota},
      {"v1", "Secret", Resources::V1::Secret},
      {"v1", "Service", Resources::V1::Service},
      {"v1", "ServiceAccount", Resources::V1::ServiceAccount},
      {"apps/v1beta1", "Deployment", Resources::Apps::V1beta1::Deployment},
      {"apps/v1beta1", "Scale", Resources::Apps::V1beta1::Scale},
      {"apps/v1beta1", "StatefulSet", Resources::Apps::V1beta1::StatefulSet},
      {"authentication/v1", "TokenReview", Resources::Authentication::V1::TokenReview},
      {"authentication/v1beta1", "TokenReview", Resources::Authentication::V1beta1::TokenReview},
      {"authorization/v1", "LocalSubjectAccessReview", Resources::Authorization::V1::LocalSubjectAccessReview},
      {"authorization/v1", "SelfSubjectAccessReview", Resources::Authorization::V1::SelfSubjectAccessReview},
      {"authorization/v1", "SubjectAccessReview", Resources::Authorization::V1::SubjectAccessReview},
      {"authorization/v1beta1", "LocalSubjectAccessReview", Resources::Authorization::V1beta1::LocalSubjectAccessReview},
      {"authorization/v1beta1", "SelfSubjectAccessReview", Resources::Authorization::V1beta1::SelfSubjectAccessReview},
      {"authorization/v1beta1", "SubjectAccessReview", Resources::Authorization::V1beta1::SubjectAccessReview},
      {"autoscaling/v1", "HorizontalPodAutoscaler", Resources::Autoscaling::V1::HorizontalPodAutoscaler},
      {"autoscaling/v1", "Scale", Resources::Autoscaling::V1::Scale},
      {"autoscaling/v2alpha1", "HorizontalPodAutoscaler", Resources::Autoscaling::V2alpha1::HorizontalPodAutoscaler},
      {"batch/v1", "Job", Resources::Batch::V1::Job},
      {"batch/v2alpha1", "CronJob", Resources::Batch::V2alpha1::CronJob},
      {"certificates/v1beta1", "CertificateSigningRequest", Resources::Certificates::V1beta1::CertificateSigningRequest},
      {"extensions/v1beta1", "DaemonSet", Resources::Extensions::V1beta1::DaemonSet},
      {"extensions/v1beta1", "Deployment", Resources::Extensions::V1beta1::Deployment},
      {"extensions/v1beta1", "Ingress", Resources::Extensions::V1beta1::Ingress},
      {"extensions/v1beta1", "NetworkPolicy", Resources::Extensions::V1beta1::NetworkPolicy},
      {"extensions/v1beta1", "PodSecurityPolicy", Resources::Extensions::V1beta1::PodSecurityPolicy},
      {"extensions/v1beta1", "ReplicaSet", Resources::Extensions::V1beta1::ReplicaSet},
      {"extensions/v1beta1", "Scale", Resources::Extensions::V1beta1::Scale},
      {"extensions/v1beta1", "ThirdPartyResource", Resources::Extensions::V1beta1::ThirdPartyResource},
      {"policy/v1beta1", "Eviction", Resources::Policy::V1beta1::Eviction},
      {"policy/v1beta1", "PodDisruptionBudget", Resources::Policy::V1beta1::PodDisruptionBudget},
      {"rbac/v1alpha1", "ClusterRole", Resources::Rbac::V1alpha1::ClusterRole},
      {"rbac/v1alpha1", "ClusterRoleBinding", Resources::Rbac::V1alpha1::ClusterRoleBinding},
      {"rbac/v1alpha1", "Role", Resources::Rbac::V1alpha1::Role},
      {"rbac/v1alpha1", "RoleBinding", Resources::Rbac::V1alpha1::RoleBinding},
      {"rbac/v1beta1", "ClusterRole", Resources::Rbac::V1beta1::ClusterRole},
      {"rbac/v1beta1", "ClusterRoleBinding", Resources::Rbac::V1beta1::ClusterRoleBinding},
      {"rbac/v1beta1", "Role", Resources::Rbac::V1beta1::Role},
      {"rbac/v1beta1", "RoleBinding", Resources::Rbac::V1beta1::RoleBinding},
      {"settings/v1alpha1", "PodPreset", Resources::Settings::V1alpha1::PodPreset},
      {"storage/v1", "StorageClass", Resources::Storage::V1::StorageClass},
      {"storage/v1beta1", "StorageClass", Resources::Storage::V1beta1::StorageClass},
    ]

    k8s_json_discriminator(MAPPINGS)
    k8s_yaml_discriminator(MAPPINGS)
  end
end
