# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ObjectMeta; end

require "./managed_fields_entry"
require "./owner_reference"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ObjectMeta`.
  module Types::Apimachinery::Apis::Meta::V1::ObjectMeta
    # Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [[http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)](http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations))
    abstract def annotations : ::Hash(String, String)?
    # :ditto:
    abstract def annotations! : ::Hash(String, String)
    # :ditto:
    abstract def annotations? : ::Hash(String, String)?
    # :ditto:
    abstract def annotations=(value : ::Hash(String, String))
    # The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
    abstract def cluster_name : String?
    # :ditto:
    abstract def cluster_name! : String
    # :ditto:
    abstract def cluster_name? : String?
    # :ditto:
    abstract def cluster_name=(value : String)
    # CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
    #
    # Populated by the system. Read-only. Null for lists. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))
    abstract def creation_timestamp : ::Time?
    # :ditto:
    abstract def creation_timestamp! : ::Time
    # :ditto:
    abstract def creation_timestamp? : ::Time?
    # :ditto:
    abstract def creation_timestamp=(value : ::Time)
    # Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
    abstract def deletion_grace_period_seconds : Int32?
    # :ditto:
    abstract def deletion_grace_period_seconds! : Int32
    # :ditto:
    abstract def deletion_grace_period_seconds? : Int32?
    # :ditto:
    abstract def deletion_grace_period_seconds=(value : Int32)
    # DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
    #
    # Populated by the system when a graceful deletion is requested. Read-only. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))
    abstract def deletion_timestamp : ::Time?
    # :ditto:
    abstract def deletion_timestamp! : ::Time
    # :ditto:
    abstract def deletion_timestamp? : ::Time?
    # :ditto:
    abstract def deletion_timestamp=(value : ::Time)
    # Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    abstract def finalizers : ::Array(String)?
    # :ditto:
    abstract def finalizers! : ::Array(String)
    # :ditto:
    abstract def finalizers? : ::Array(String)?
    # :ditto:
    abstract def finalizers=(value : ::Array(String))
    # GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
    #
    # If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
    #
    # Applied only if Name is not specified. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency))
    abstract def generate_name : String?
    # :ditto:
    abstract def generate_name! : String
    # :ditto:
    abstract def generate_name? : String?
    # :ditto:
    abstract def generate_name=(value : String)
    # A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
    abstract def generation : Int32?
    # :ditto:
    abstract def generation! : Int32
    # :ditto:
    abstract def generation? : Int32?
    # :ditto:
    abstract def generation=(value : Int32)
    # Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [[http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)](http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels))
    abstract def labels : ::Hash(String, String)?
    # :ditto:
    abstract def labels! : ::Hash(String, String)
    # :ditto:
    abstract def labels? : ::Hash(String, String)?
    # :ditto:
    abstract def labels=(value : ::Hash(String, String))
    # ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
    abstract def managed_fields : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)?
    # :ditto:
    abstract def managed_fields! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)
    # :ditto:
    abstract def managed_fields? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)?
    # :ditto:
    abstract def managed_fields=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry))
    # Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
    #
    # Must be a DNS_LABEL. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)](http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces))
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
    # List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
    abstract def owner_references : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
    # :ditto:
    abstract def owner_references! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)
    # :ditto:
    abstract def owner_references? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
    # :ditto:
    abstract def owner_references=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference))
    # An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
    #
    # Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency))
    abstract def resource_version : String?
    # :ditto:
    abstract def resource_version! : String
    # :ditto:
    abstract def resource_version? : String?
    # :ditto:
    abstract def resource_version=(value : String)
    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    #
    # DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
    abstract def self_link : String?
    # :ditto:
    abstract def self_link! : String
    # :ditto:
    abstract def self_link? : String?
    # :ditto:
    abstract def self_link=(value : String)
    # UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
    #
    # Populated by the system. Read-only. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
  end

  # ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  @[::K8S::Properties(
    annotations: {key: "annotations", accessor: "annotations", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cluster_name: {key: "clusterName", accessor: "cluster_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    creation_timestamp: {key: "creationTimestamp", accessor: "creation_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\n\nPopulated by the system. Read-only. Null for lists. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deletion_grace_period_seconds: {key: "deletionGracePeriodSeconds", accessor: "deletion_grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deletion_timestamp: {key: "deletionTimestamp", accessor: "deletion_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.\n\nPopulated by the system when a graceful deletion is requested. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    finalizers: {key: "finalizers", accessor: "finalizers", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    generate_name: {key: "generateName", accessor: "generate_name", kind: "String", nilable: true, default: nil, read_only: false, description: "GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    generation: {key: "generation", accessor: "generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    labels: {key: "labels", accessor: "labels", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    managed_fields: {key: "managedFields", accessor: "managed_fields", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)", nilable: true, default: nil, read_only: false, description: "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace defines the space within each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    owner_references: {key: "ownerReferences", accessor: "owner_references", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)", nilable: true, default: nil, read_only: false, description: "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    self_link: {key: "selfLink", accessor: "self_link", kind: "String", nilable: true, default: nil, read_only: false, description: "SelfLink is a URL representing this object. Populated by the system. Read-only.\n\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::ObjectMeta < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ObjectMeta
    k8s_object_accessor("annotations", annotations : ::Hash(String, String), true, false, "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)")
    k8s_object_accessor("clusterName", cluster_name : String, true, false, "The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.")
    k8s_object_accessor("creationTimestamp", creation_timestamp : ::Time, true, false, "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\n\nPopulated by the system. Read-only. Null for lists. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)")
    k8s_object_accessor("deletionGracePeriodSeconds", deletion_grace_period_seconds : Int32, true, false, "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.")
    k8s_object_accessor("deletionTimestamp", deletion_timestamp : ::Time, true, false, "DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.\n\nPopulated by the system when a graceful deletion is requested. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)")
    k8s_object_accessor("finalizers", finalizers : ::Array(String), true, false, "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.")
    k8s_object_accessor("generateName", generate_name : String, true, false, "GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency)")
    k8s_object_accessor("generation", generation : Int32, true, false, "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.")
    k8s_object_accessor("labels", labels : ::Hash(String, String), true, false, "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)")
    k8s_object_accessor("managedFields", managed_fields : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry), true, false, "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.")
    k8s_object_accessor("name", name : String, true, false, "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)")
    k8s_object_accessor("namespace", namespace : String, true, false, "Namespace defines the space within each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)")
    k8s_object_accessor("ownerReferences", owner_references : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference), true, false, "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.")
    k8s_object_accessor("resourceVersion", resource_version : String, true, false, "An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency)")
    k8s_object_accessor("selfLink", self_link : String, true, false, "SelfLink is a URL representing this object. Populated by the system. Read-only.\n\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.")
    k8s_object_accessor("uid", uid : String, true, false, "UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)")

    def initialize(*, annotations : ::Hash(String, String)? = nil, cluster_name : String? = nil, creation_timestamp : ::Time? = nil, deletion_grace_period_seconds : Int32? = nil, deletion_timestamp : ::Time? = nil, finalizers : ::Array(String)? = nil, generate_name : String? = nil, generation : Int32? = nil, labels : ::Hash(String, String)? = nil, managed_fields : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)? = nil, name : String? = nil, namespace : String? = nil, owner_references : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)? = nil, resource_version : String? = nil, self_link : String? = nil, uid : String? = nil)
      super()
      self.["annotations"] = annotations
      self.["clusterName"] = cluster_name
      self.["creationTimestamp"] = creation_timestamp
      self.["deletionGracePeriodSeconds"] = deletion_grace_period_seconds
      self.["deletionTimestamp"] = deletion_timestamp
      self.["finalizers"] = finalizers
      self.["generateName"] = generate_name
      self.["generation"] = generation
      self.["labels"] = labels
      self.["managedFields"] = managed_fields
      self.["name"] = name
      self.["namespace"] = namespace
      self.["ownerReferences"] = owner_references
      self.["resourceVersion"] = resource_version
      self.["selfLink"] = self_link
      self.["uid"] = uid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "annotations", accessor: "annotations", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "clusterName", accessor: "cluster_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "creationTimestamp", accessor: "creation_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "deletionGracePeriodSeconds", accessor: "deletion_grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "deletionTimestamp", accessor: "deletion_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "finalizers", accessor: "finalizers", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "generateName", accessor: "generate_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "generation", accessor: "generation", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "labels", accessor: "labels", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "managedFields", accessor: "managed_fields", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry)},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String},
      {key: "ownerReferences", accessor: "owner_references", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)},
      {key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "selfLink", accessor: "self_link", nilable: true, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
