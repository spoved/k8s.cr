# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./preconditions"

::K8S::Kubernetes::Resource.define_resource("", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("admission.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apiextensions.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta2", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v2beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v2beta2", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v2alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("coordination.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("events.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("imagepolicy.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("policy", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("settings.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1alpha1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1beta1", "DeleteOptions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "dry_run", kind: ::Array(String), key: "dryRun", nilable: true, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed"},
    {name: "grace_period_seconds", kind: Int32, key: "gracePeriodSeconds", nilable: true, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately."},
    {name: "orphan_dependents", kind: ::Bool, key: "orphanDependents", nilable: true, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)"},
    {name: "preconditions", kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions, key: "preconditions", nilable: true, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned."},
    {name: "propagation_policy", kind: String, key: "propagationPolicy", nilable: true, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground."},

  ],
  description: "DeleteOptions may be provided when deleting an API object.",
)
