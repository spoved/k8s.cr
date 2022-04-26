# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./preconditions"

::K8S::Kubernetes::Resource.define_resource("", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
  versions: [{group: "", kind: "DeleteOptions", version: "v1"}, {group: "admission.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "admissionregistration.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "admissionregistration.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "apiextensions.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "apiregistration.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "apiregistration.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "apps", kind: "DeleteOptions", version: "v1"}, {group: "apps", kind: "DeleteOptions", version: "v1beta1"}, {group: "apps", kind: "DeleteOptions", version: "v1beta2"}, {group: "authentication.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "authentication.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "authorization.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "authorization.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "autoscaling", kind: "DeleteOptions", version: "v1"}, {group: "autoscaling", kind: "DeleteOptions", version: "v2beta1"}, {group: "batch", kind: "DeleteOptions", version: "v1"}, {group: "batch", kind: "DeleteOptions", version: "v1beta1"}, {group: "batch", kind: "DeleteOptions", version: "v2alpha1"}, {group: "certificates.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "events.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "extensions", kind: "DeleteOptions", version: "v1beta1"}, {group: "imagepolicy.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "networking.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "policy", kind: "DeleteOptions", version: "v1beta1"}, {group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "scheduling.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "scheduling.k8s.io", kind: "DeleteOptions", version: "v1beta1"}, {group: "settings.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "storage.k8s.io", kind: "DeleteOptions", version: "v1"}, {group: "storage.k8s.io", kind: "DeleteOptions", version: "v1alpha1"}, {group: "storage.k8s.io", kind: "DeleteOptions", version: "v1beta1"}],
)
alias K8S::Admission::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Admissionregistration::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Admissionregistration::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apiextensions::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apiregistration::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apiregistration::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apps::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apps::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Apps::V1beta2::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authentication::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authentication::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authorization::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authorization::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Autoscaling::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Autoscaling::V2beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Batch::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Batch::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Batch::V2alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Certificates::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Events::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Extensions::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Imagepolicy::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Networking::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Policy::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authorization::Rbac::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authorization::Rbac::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Authorization::Rbac::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Scheduling::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Scheduling::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Settings::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Storage::V1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Storage::V1alpha1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
alias K8S::Storage::V1beta1::DeleteOptions = ::K8S::Apimachinery::Apis::Meta::V1::DeleteOptions
