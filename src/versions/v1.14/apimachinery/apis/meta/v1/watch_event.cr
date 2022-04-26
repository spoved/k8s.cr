# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../runtime/raw_extension"

::K8S::Kubernetes::Resource.define_resource("", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
  versions: [{group: "", kind: "WatchEvent", version: "v1"}, {group: "admission.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "admissionregistration.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "apiextensions.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "apps", kind: "WatchEvent", version: "v1"}, {group: "apps", kind: "WatchEvent", version: "v1beta1"}, {group: "apps", kind: "WatchEvent", version: "v1beta2"}, {group: "auditregistration.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "authentication.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "authentication.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "authorization.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "authorization.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "autoscaling", kind: "WatchEvent", version: "v1"}, {group: "autoscaling", kind: "WatchEvent", version: "v2beta1"}, {group: "autoscaling", kind: "WatchEvent", version: "v2beta2"}, {group: "batch", kind: "WatchEvent", version: "v1"}, {group: "batch", kind: "WatchEvent", version: "v1beta1"}, {group: "batch", kind: "WatchEvent", version: "v2alpha1"}, {group: "certificates.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "coordination.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "coordination.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "events.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "extensions", kind: "WatchEvent", version: "v1beta1"}, {group: "imagepolicy.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "networking.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "networking.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "node.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "node.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "policy", kind: "WatchEvent", version: "v1beta1"}, {group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1beta1"}, {group: "settings.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "storage.k8s.io", kind: "WatchEvent", version: "v1"}, {group: "storage.k8s.io", kind: "WatchEvent", version: "v1alpha1"}, {group: "storage.k8s.io", kind: "WatchEvent", version: "v1beta1"}],
)
alias K8S::Admission::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Admissionregistration::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apiextensions::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apiregistration::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apiregistration::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apps::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apps::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Apps::V1beta2::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Auditregistration::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authentication::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authentication::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authorization::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authorization::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Autoscaling::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Autoscaling::V2beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Autoscaling::V2beta2::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Batch::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Batch::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Batch::V2alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Certificates::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Coordination::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Coordination::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Events::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Extensions::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Imagepolicy::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Networking::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Networking::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Node::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Node::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Policy::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authorization::Rbac::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authorization::Rbac::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Authorization::Rbac::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Scheduling::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Scheduling::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Scheduling::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Settings::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Storage::V1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Storage::V1alpha1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
alias K8S::Storage::V1beta1::WatchEvent = ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
