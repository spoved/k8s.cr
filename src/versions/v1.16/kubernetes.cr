module ::K8S::Kubernetes
  VERSION = SemanticVersion.parse("1.16.0")

  abstract class Resource
    include JSON::Serializable

    MAPPINGS = [
      {"admissionregistration/v1", "MutatingWebhookConfiguration", Resources::Admissionregistration::V1::MutatingWebhookConfiguration},
      {"admissionregistration/v1", "ValidatingWebhookConfiguration", Resources::Admissionregistration::V1::ValidatingWebhookConfiguration},
      {"admissionregistration/v1beta1", "MutatingWebhookConfiguration", Resources::Admissionregistration::V1beta1::MutatingWebhookConfiguration},
      {"admissionregistration/v1beta1", "ValidatingWebhookConfiguration", Resources::Admissionregistration::V1beta1::ValidatingWebhookConfiguration},
      {"apps/v1", "ControllerRevision", Resources::Apps::V1::ControllerRevision},
      {"apps/v1", "DaemonSet", Resources::Apps::V1::DaemonSet},
      {"apps/v1", "Deployment", Resources::Apps::V1::Deployment},
      {"apps/v1", "ReplicaSet", Resources::Apps::V1::ReplicaSet},
      {"apps/v1", "StatefulSet", Resources::Apps::V1::StatefulSet},
      {"apps/v1beta1", "ControllerRevision", Resources::Apps::V1beta1::ControllerRevision},
      {"apps/v1beta1", "Deployment", Resources::Apps::V1beta1::Deployment},
      {"apps/v1beta1", "Scale", Resources::Apps::V1beta1::Scale},
      {"apps/v1beta1", "StatefulSet", Resources::Apps::V1beta1::StatefulSet},
      {"apps/v1beta2", "ControllerRevision", Resources::Apps::V1beta2::ControllerRevision},
      {"apps/v1beta2", "DaemonSet", Resources::Apps::V1beta2::DaemonSet},
      {"apps/v1beta2", "Deployment", Resources::Apps::V1beta2::Deployment},
      {"apps/v1beta2", "ReplicaSet", Resources::Apps::V1beta2::ReplicaSet},
      {"apps/v1beta2", "Scale", Resources::Apps::V1beta2::Scale},
      {"apps/v1beta2", "StatefulSet", Resources::Apps::V1beta2::StatefulSet},
      {"auditregistration/v1alpha1", "AuditSink", Resources::Auditregistration::V1alpha1::AuditSink},
      {"authentication/v1", "TokenRequest", Resources::Authentication::V1::TokenRequest},
      {"authentication/v1", "TokenReview", Resources::Authentication::V1::TokenReview},
      {"authentication/v1beta1", "TokenReview", Resources::Authentication::V1beta1::TokenReview},
      {"authorization/v1", "LocalSubjectAccessReview", Resources::Authorization::V1::LocalSubjectAccessReview},
      {"authorization/v1", "SelfSubjectAccessReview", Resources::Authorization::V1::SelfSubjectAccessReview},
      {"authorization/v1", "SelfSubjectRulesReview", Resources::Authorization::V1::SelfSubjectRulesReview},
      {"authorization/v1", "SubjectAccessReview", Resources::Authorization::V1::SubjectAccessReview},
      {"authorization/v1beta1", "LocalSubjectAccessReview", Resources::Authorization::V1beta1::LocalSubjectAccessReview},
      {"authorization/v1beta1", "SelfSubjectAccessReview", Resources::Authorization::V1beta1::SelfSubjectAccessReview},
      {"authorization/v1beta1", "SelfSubjectRulesReview", Resources::Authorization::V1beta1::SelfSubjectRulesReview},
      {"authorization/v1beta1", "SubjectAccessReview", Resources::Authorization::V1beta1::SubjectAccessReview},
      {"autoscaling/v1", "HorizontalPodAutoscaler", Resources::Autoscaling::V1::HorizontalPodAutoscaler},
      {"autoscaling/v1", "Scale", Resources::Autoscaling::V1::Scale},
      {"autoscaling/v2beta1", "HorizontalPodAutoscaler", Resources::Autoscaling::V2beta1::HorizontalPodAutoscaler},
      {"autoscaling/v2beta2", "HorizontalPodAutoscaler", Resources::Autoscaling::V2beta2::HorizontalPodAutoscaler},
      {"batch/v1", "Job", Resources::Batch::V1::Job},
      {"batch/v1beta1", "CronJob", Resources::Batch::V1beta1::CronJob},
      {"batch/v2alpha1", "CronJob", Resources::Batch::V2alpha1::CronJob},
      {"certificates/v1beta1", "CertificateSigningRequest", Resources::Certificates::V1beta1::CertificateSigningRequest},
      {"coordination/v1", "Lease", Resources::Coordination::V1::Lease},
      {"coordination/v1beta1", "Lease", Resources::Coordination::V1beta1::Lease},
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
      {"discovery/v1alpha1", "EndpointSlice", Resources::Discovery::V1alpha1::EndpointSlice},
      {"events/v1beta1", "Event", Resources::Events::V1beta1::Event},
      {"extensions/v1beta1", "DaemonSet", Resources::Extensions::V1beta1::DaemonSet},
      {"extensions/v1beta1", "Deployment", Resources::Extensions::V1beta1::Deployment},
      {"extensions/v1beta1", "Ingress", Resources::Extensions::V1beta1::Ingress},
      {"extensions/v1beta1", "NetworkPolicy", Resources::Extensions::V1beta1::NetworkPolicy},
      {"extensions/v1beta1", "PodSecurityPolicy", Resources::Extensions::V1beta1::PodSecurityPolicy},
      {"extensions/v1beta1", "ReplicaSet", Resources::Extensions::V1beta1::ReplicaSet},
      {"extensions/v1beta1", "Scale", Resources::Extensions::V1beta1::Scale},
      {"networking/v1", "NetworkPolicy", Resources::Networking::V1::NetworkPolicy},
      {"networking/v1beta1", "Ingress", Resources::Networking::V1beta1::Ingress},
      {"node/v1alpha1", "RuntimeClass", Resources::Node::V1alpha1::RuntimeClass},
      {"node/v1beta1", "RuntimeClass", Resources::Node::V1beta1::RuntimeClass},
      {"policy/v1beta1", "Eviction", Resources::Policy::V1beta1::Eviction},
      {"policy/v1beta1", "PodDisruptionBudget", Resources::Policy::V1beta1::PodDisruptionBudget},
      {"policy/v1beta1", "PodSecurityPolicy", Resources::Policy::V1beta1::PodSecurityPolicy},
      {"rbac/v1", "ClusterRole", Resources::Rbac::V1::ClusterRole},
      {"rbac/v1", "ClusterRoleBinding", Resources::Rbac::V1::ClusterRoleBinding},
      {"rbac/v1", "Role", Resources::Rbac::V1::Role},
      {"rbac/v1", "RoleBinding", Resources::Rbac::V1::RoleBinding},
      {"rbac/v1alpha1", "ClusterRole", Resources::Rbac::V1alpha1::ClusterRole},
      {"rbac/v1alpha1", "ClusterRoleBinding", Resources::Rbac::V1alpha1::ClusterRoleBinding},
      {"rbac/v1alpha1", "Role", Resources::Rbac::V1alpha1::Role},
      {"rbac/v1alpha1", "RoleBinding", Resources::Rbac::V1alpha1::RoleBinding},
      {"rbac/v1beta1", "ClusterRole", Resources::Rbac::V1beta1::ClusterRole},
      {"rbac/v1beta1", "ClusterRoleBinding", Resources::Rbac::V1beta1::ClusterRoleBinding},
      {"rbac/v1beta1", "Role", Resources::Rbac::V1beta1::Role},
      {"rbac/v1beta1", "RoleBinding", Resources::Rbac::V1beta1::RoleBinding},
      {"scheduling/v1", "PriorityClass", Resources::Scheduling::V1::PriorityClass},
      {"scheduling/v1alpha1", "PriorityClass", Resources::Scheduling::V1alpha1::PriorityClass},
      {"scheduling/v1beta1", "PriorityClass", Resources::Scheduling::V1beta1::PriorityClass},
      {"settings/v1alpha1", "PodPreset", Resources::Settings::V1alpha1::PodPreset},
      {"storage/v1", "StorageClass", Resources::Storage::V1::StorageClass},
      {"storage/v1", "VolumeAttachment", Resources::Storage::V1::VolumeAttachment},
      {"storage/v1alpha1", "VolumeAttachment", Resources::Storage::V1alpha1::VolumeAttachment},
      {"storage/v1beta1", "CSIDriver", Resources::Storage::V1beta1::CSIDriver},
      {"storage/v1beta1", "CSINode", Resources::Storage::V1beta1::CSINode},
      {"storage/v1beta1", "StorageClass", Resources::Storage::V1beta1::StorageClass},
      {"storage/v1beta1", "VolumeAttachment", Resources::Storage::V1beta1::VolumeAttachment},
      {"apiextensions/v1", "CustomResourceDefinition", Resources::Apiextensions::V1::CustomResourceDefinition},
      {"apiextensions/v1beta1", "CustomResourceDefinition", Resources::Apiextensions::V1beta1::CustomResourceDefinition},
      {"apiregistration/v1", "APIService", Resources::Apiregistration::V1::APIService},
      {"apiregistration/v1beta1", "APIService", Resources::Apiregistration::V1beta1::APIService},
    ]

    k8s_json_discriminator(MAPPINGS)
    k8s_yaml_discriminator(MAPPINGS)
  end
end
