# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::DeleteOptions; end

require "./preconditions"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::DeleteOptions`.
  module Types::Apimachinery::Apis::Meta::V1::DeleteOptions
    alias ValueType = String | ::Array(String) | Int32 | ::Bool | ::K8S::Apimachinery::Apis::Meta::V1::Preconditions | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    abstract def dry_run : ::Array(String)?
    # :ditto:
    abstract def dry_run! : ::Array(String)
    # :ditto:
    abstract def dry_run? : ::Array(String)?
    # :ditto:
    abstract def dry_run=(value : ::Array(String)?)
    # The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
    abstract def grace_period_seconds : Int32?
    # :ditto:
    abstract def grace_period_seconds! : Int32
    # :ditto:
    abstract def grace_period_seconds? : Int32?
    # :ditto:
    abstract def grace_period_seconds=(value : Int32?)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String?)
    # Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [[true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)]([true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.))
    abstract def orphan_dependents : ::Bool?
    # :ditto:
    abstract def orphan_dependents! : ::Bool
    # :ditto:
    abstract def orphan_dependents? : ::Bool?
    # :ditto:
    abstract def orphan_dependents=(value : ::Bool?)
    # Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
    abstract def preconditions : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?
    # :ditto:
    abstract def preconditions! : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions
    # :ditto:
    abstract def preconditions? : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?
    # :ditto:
    abstract def preconditions=(value : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?)
    # Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
    abstract def propagation_policy : String?
    # :ditto:
    abstract def propagation_policy! : String
    # :ditto:
    abstract def propagation_policy? : String?
    # :ditto:
    abstract def propagation_policy=(value : String?)
  end

  # DeleteOptions may be provided when deleting an API object.
  @[::K8S::GroupVersionKind(group: "", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "admission.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "admission.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeleteOptions", version: "v1beta2", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "auditregistration.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "DeleteOptions", version: "v2beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "DeleteOptions", version: "v2beta2", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "DeleteOptions", version: "v2alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "certificates.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "coordination.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "coordination.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "discovery.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "extensions", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "imagepolicy.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "networking.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "networking.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "node.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "node.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "policy", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "settings.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "DeleteOptions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "DeleteOptions", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "DeleteOptions", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dry_run: {key: "dryRun", accessor: "dry_run", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    grace_period_seconds: {key: "gracePeriodSeconds", accessor: "grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    orphan_dependents: {key: "orphanDependents", accessor: "orphan_dependents", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    preconditions: {key: "preconditions", accessor: "preconditions", kind: "::K8S::Apimachinery::Apis::Meta::V1::Preconditions", nilable: true, default: nil, read_only: false, description: "Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    propagation_policy: {key: "propagationPolicy", accessor: "propagation_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::DeleteOptions < ::K8S::Types::Apimachinery::Apis::Meta::V1::DeleteOptions::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::DeleteOptions
    include ::K8S::Kubernetes::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    def dry_run : ::Array(String)?
      self.["dryRun"].as(::Array(String)?)
    end

    # :ditto:
    def dry_run! : ::Array(String)
      self.["dryRun"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def dry_run? : ::Array(String)?
      self.["dryRun"]?.as(::Array(String)?)
    end

    # :ditto:
    def dry_run=(value : ::Array(String)?)
      self.["dryRun"] = value
    end

    # The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
    def grace_period_seconds : Int32?
      self.["gracePeriodSeconds"].as(Int32?)
    end

    # :ditto:
    def grace_period_seconds! : Int32
      self.["gracePeriodSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def grace_period_seconds? : Int32?
      self.["gracePeriodSeconds"]?.as(Int32?)
    end

    # :ditto:
    def grace_period_seconds=(value : Int32?)
      self.["gracePeriodSeconds"] = value
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    def kind : String?
      self.["kind"].as(String?)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String?).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String?)
      self.["kind"] = value
    end

    # Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [[true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)]([true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.))
    def orphan_dependents : ::Bool?
      self.["orphanDependents"].as(::Bool?)
    end

    # :ditto:
    def orphan_dependents! : ::Bool
      self.["orphanDependents"].as(::Bool?).not_nil!
    end

    # :ditto:
    def orphan_dependents? : ::Bool?
      self.["orphanDependents"]?.as(::Bool?)
    end

    # :ditto:
    def orphan_dependents=(value : ::Bool?)
      self.["orphanDependents"] = value
    end

    # Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
    def preconditions : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?
      self.["preconditions"].as(::K8S::Apimachinery::Apis::Meta::V1::Preconditions?)
    end

    # :ditto:
    def preconditions! : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions
      self.["preconditions"].as(::K8S::Apimachinery::Apis::Meta::V1::Preconditions?).not_nil!
    end

    # :ditto:
    def preconditions? : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?
      self.["preconditions"]?.as(::K8S::Apimachinery::Apis::Meta::V1::Preconditions?)
    end

    # :ditto:
    def preconditions=(value : ::K8S::Apimachinery::Apis::Meta::V1::Preconditions?)
      self.["preconditions"] = value
    end

    # Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
    def propagation_policy : String?
      self.["propagationPolicy"].as(String?)
    end

    # :ditto:
    def propagation_policy! : String
      self.["propagationPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def propagation_policy? : String?
      self.["propagationPolicy"]?.as(String?)
    end

    # :ditto:
    def propagation_policy=(value : String?)
      self.["propagationPolicy"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "dryRun", accessor: "dry_run", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "gracePeriodSeconds", accessor: "grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "orphanDependents", accessor: "orphan_dependents", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "preconditions", accessor: "preconditions", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::Preconditions },
        { key: "propagationPolicy", accessor: "propagation_policy", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
