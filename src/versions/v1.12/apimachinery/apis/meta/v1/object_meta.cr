# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ObjectMeta; end

require "./initializers"
require "./owner_reference"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ObjectMeta`.
  module Types::Apimachinery::Apis::Meta::V1::ObjectMeta
    alias ValueType = ::Hash(String, String) | String | ::Time | Int32 | ::Array(String) | ::K8S::Apimachinery::Apis::Meta::V1::Initializers | ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [[http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)](http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations))
    abstract def annotations : ::Hash(String, String)?
    # :ditto:
    abstract def annotations! : ::Hash(String, String)
    # :ditto:
    abstract def annotations? : ::Hash(String, String)?
    # :ditto:
    abstract def annotations=(value : ::Hash(String, String)?)
    # The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
    abstract def cluster_name : String?
    # :ditto:
    abstract def cluster_name! : String
    # :ditto:
    abstract def cluster_name? : String?
    # :ditto:
    abstract def cluster_name=(value : String?)
    # CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
    #
    # Populated by the system. Read-only. Null for lists. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
    abstract def creation_timestamp : ::Time?
    # :ditto:
    abstract def creation_timestamp! : ::Time
    # :ditto:
    abstract def creation_timestamp? : ::Time?
    # :ditto:
    abstract def creation_timestamp=(value : ::Time?)
    # Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
    abstract def deletion_grace_period_seconds : Int32?
    # :ditto:
    abstract def deletion_grace_period_seconds! : Int32
    # :ditto:
    abstract def deletion_grace_period_seconds? : Int32?
    # :ditto:
    abstract def deletion_grace_period_seconds=(value : Int32?)
    # DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
    #
    # Populated by the system when a graceful deletion is requested. Read-only. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
    abstract def deletion_timestamp : ::Time?
    # :ditto:
    abstract def deletion_timestamp! : ::Time
    # :ditto:
    abstract def deletion_timestamp? : ::Time?
    # :ditto:
    abstract def deletion_timestamp=(value : ::Time?)
    # Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    abstract def finalizers : ::Array(String)?
    # :ditto:
    abstract def finalizers! : ::Array(String)
    # :ditto:
    abstract def finalizers? : ::Array(String)?
    # :ditto:
    abstract def finalizers=(value : ::Array(String)?)
    # GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
    #
    # If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
    #
    # Applied only if Name is not specified. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency)](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency))
    abstract def generate_name : String?
    # :ditto:
    abstract def generate_name! : String
    # :ditto:
    abstract def generate_name? : String?
    # :ditto:
    abstract def generate_name=(value : String?)
    # A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
    abstract def generation : Int32?
    # :ditto:
    abstract def generation! : Int32
    # :ditto:
    abstract def generation? : Int32?
    # :ditto:
    abstract def generation=(value : Int32?)
    # An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in [[list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.)]([list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.))
    #
    # When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.
    abstract def initializers : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?
    # :ditto:
    abstract def initializers! : ::K8S::Apimachinery::Apis::Meta::V1::Initializers
    # :ditto:
    abstract def initializers? : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?
    # :ditto:
    abstract def initializers=(value : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?)
    # Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [[http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)](http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels))
    abstract def labels : ::Hash(String, String)?
    # :ditto:
    abstract def labels! : ::Hash(String, String)
    # :ditto:
    abstract def labels? : ::Hash(String, String)?
    # :ditto:
    abstract def labels=(value : ::Hash(String, String)?)
    # Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
    #
    # Must be a DNS_LABEL. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)](http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces))
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
    # List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
    abstract def owner_references : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
    # :ditto:
    abstract def owner_references! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)
    # :ditto:
    abstract def owner_references? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
    # :ditto:
    abstract def owner_references=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?)
    # An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
    #
    # Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency))
    abstract def resource_version : String?
    # :ditto:
    abstract def resource_version! : String
    # :ditto:
    abstract def resource_version? : String?
    # :ditto:
    abstract def resource_version=(value : String?)
    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    abstract def self_link : String?
    # :ditto:
    abstract def self_link! : String
    # :ditto:
    abstract def self_link? : String?
    # :ditto:
    abstract def self_link=(value : String?)
    # UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
    #
    # Populated by the system. Read-only. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
  end

  # ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  @[::K8S::Properties(
    annotations: {key: "annotations", accessor: "annotations", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cluster_name: {key: "clusterName", accessor: "cluster_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    creation_timestamp: {key: "creationTimestamp", accessor: "creation_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\n\nPopulated by the system. Read-only. Null for lists. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deletion_grace_period_seconds: {key: "deletionGracePeriodSeconds", accessor: "deletion_grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    deletion_timestamp: {key: "deletionTimestamp", accessor: "deletion_timestamp", kind: "::Time", nilable: true, default: nil, read_only: false, description: "DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.\n\nPopulated by the system when a graceful deletion is requested. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    finalizers: {key: "finalizers", accessor: "finalizers", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    generate_name: {key: "generateName", accessor: "generate_name", kind: "String", nilable: true, default: nil, read_only: false, description: "GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    generation: {key: "generation", accessor: "generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    initializers: {key: "initializers", accessor: "initializers", kind: "::K8S::Apimachinery::Apis::Meta::V1::Initializers", nilable: true, default: nil, read_only: false, description: "An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in [list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.)\n\nWhen an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    labels: {key: "labels", accessor: "labels", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace defines the space within each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    owner_references: {key: "ownerReferences", accessor: "owner_references", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)", nilable: true, default: nil, read_only: false, description: "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    self_link: {key: "selfLink", accessor: "self_link", kind: "String", nilable: true, default: nil, read_only: false, description: "SelfLink is a URL representing this object. Populated by the system. Read-only.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::ObjectMeta < ::K8S::Types::Apimachinery::Apis::Meta::V1::ObjectMeta::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ObjectMeta
    include ::K8S::Kubernetes::Object

    # Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [[http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)](http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations))
    def annotations : ::Hash(String, String)?
      self.["annotations"].as(::Hash(String, String)?)
    end

    # :ditto:
    def annotations! : ::Hash(String, String)
      self.["annotations"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def annotations? : ::Hash(String, String)?
      self.["annotations"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def annotations=(value : ::Hash(String, String)?)
      self.["annotations"] = value
    end

    # The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
    def cluster_name : String?
      self.["clusterName"].as(String?)
    end

    # :ditto:
    def cluster_name! : String
      self.["clusterName"].as(String?).not_nil!
    end

    # :ditto:
    def cluster_name? : String?
      self.["clusterName"]?.as(String?)
    end

    # :ditto:
    def cluster_name=(value : String?)
      self.["clusterName"] = value
    end

    # CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
    #
    # Populated by the system. Read-only. Null for lists. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
    def creation_timestamp : ::Time?
      self.["creationTimestamp"].as(::Time?)
    end

    # :ditto:
    def creation_timestamp! : ::Time
      self.["creationTimestamp"].as(::Time?).not_nil!
    end

    # :ditto:
    def creation_timestamp? : ::Time?
      self.["creationTimestamp"]?.as(::Time?)
    end

    # :ditto:
    def creation_timestamp=(value : ::Time?)
      self.["creationTimestamp"] = value
    end

    # Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
    def deletion_grace_period_seconds : Int32?
      self.["deletionGracePeriodSeconds"].as(Int32?)
    end

    # :ditto:
    def deletion_grace_period_seconds! : Int32
      self.["deletionGracePeriodSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def deletion_grace_period_seconds? : Int32?
      self.["deletionGracePeriodSeconds"]?.as(Int32?)
    end

    # :ditto:
    def deletion_grace_period_seconds=(value : Int32?)
      self.["deletionGracePeriodSeconds"] = value
    end

    # DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
    #
    # Populated by the system when a graceful deletion is requested. Read-only. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
    def deletion_timestamp : ::Time?
      self.["deletionTimestamp"].as(::Time?)
    end

    # :ditto:
    def deletion_timestamp! : ::Time
      self.["deletionTimestamp"].as(::Time?).not_nil!
    end

    # :ditto:
    def deletion_timestamp? : ::Time?
      self.["deletionTimestamp"]?.as(::Time?)
    end

    # :ditto:
    def deletion_timestamp=(value : ::Time?)
      self.["deletionTimestamp"] = value
    end

    # Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    def finalizers : ::Array(String)?
      self.["finalizers"].as(::Array(String)?)
    end

    # :ditto:
    def finalizers! : ::Array(String)
      self.["finalizers"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def finalizers? : ::Array(String)?
      self.["finalizers"]?.as(::Array(String)?)
    end

    # :ditto:
    def finalizers=(value : ::Array(String)?)
      self.["finalizers"] = value
    end

    # GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
    #
    # If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
    #
    # Applied only if Name is not specified. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency)](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency))
    def generate_name : String?
      self.["generateName"].as(String?)
    end

    # :ditto:
    def generate_name! : String
      self.["generateName"].as(String?).not_nil!
    end

    # :ditto:
    def generate_name? : String?
      self.["generateName"]?.as(String?)
    end

    # :ditto:
    def generate_name=(value : String?)
      self.["generateName"] = value
    end

    # A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
    def generation : Int32?
      self.["generation"].as(Int32?)
    end

    # :ditto:
    def generation! : Int32
      self.["generation"].as(Int32?).not_nil!
    end

    # :ditto:
    def generation? : Int32?
      self.["generation"]?.as(Int32?)
    end

    # :ditto:
    def generation=(value : Int32?)
      self.["generation"] = value
    end

    # An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in [[list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.)]([list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.))
    #
    # When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.
    def initializers : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?
      self.["initializers"].as(::K8S::Apimachinery::Apis::Meta::V1::Initializers?)
    end

    # :ditto:
    def initializers! : ::K8S::Apimachinery::Apis::Meta::V1::Initializers
      self.["initializers"].as(::K8S::Apimachinery::Apis::Meta::V1::Initializers?).not_nil!
    end

    # :ditto:
    def initializers? : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?
      self.["initializers"]?.as(::K8S::Apimachinery::Apis::Meta::V1::Initializers?)
    end

    # :ditto:
    def initializers=(value : ::K8S::Apimachinery::Apis::Meta::V1::Initializers?)
      self.["initializers"] = value
    end

    # Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [[http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)](http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels))
    def labels : ::Hash(String, String)?
      self.["labels"].as(::Hash(String, String)?)
    end

    # :ditto:
    def labels! : ::Hash(String, String)
      self.["labels"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def labels? : ::Hash(String, String)?
      self.["labels"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def labels=(value : ::Hash(String, String)?)
      self.["labels"] = value
    end

    # Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
    #
    # Must be a DNS_LABEL. Cannot be updated. More info: [[http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)](http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces))
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    # List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
    def owner_references : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
      self.["ownerReferences"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?)
    end

    # :ditto:
    def owner_references! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)
      self.["ownerReferences"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?).not_nil!
    end

    # :ditto:
    def owner_references? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?
      self.["ownerReferences"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?)
    end

    # :ditto:
    def owner_references=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference)?)
      self.["ownerReferences"] = value
    end

    # An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
    #
    # Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency))
    def resource_version : String?
      self.["resourceVersion"].as(String?)
    end

    # :ditto:
    def resource_version! : String
      self.["resourceVersion"].as(String?).not_nil!
    end

    # :ditto:
    def resource_version? : String?
      self.["resourceVersion"]?.as(String?)
    end

    # :ditto:
    def resource_version=(value : String?)
      self.["resourceVersion"] = value
    end

    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    def self_link : String?
      self.["selfLink"].as(String?)
    end

    # :ditto:
    def self_link! : String
      self.["selfLink"].as(String?).not_nil!
    end

    # :ditto:
    def self_link? : String?
      self.["selfLink"]?.as(String?)
    end

    # :ditto:
    def self_link=(value : String?)
      self.["selfLink"] = value
    end

    # UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
    #
    # Populated by the system. Read-only. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "annotations", accessor: "annotations", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "clusterName", accessor: "cluster_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "creationTimestamp", accessor: "creation_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "deletionGracePeriodSeconds", accessor: "deletion_grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "deletionTimestamp", accessor: "deletion_timestamp", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "finalizers", accessor: "finalizers", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "generateName", accessor: "generate_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "generation", accessor: "generation", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "initializers", accessor: "initializers", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::Initializers },
        { key: "labels", accessor: "labels", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
        { key: "ownerReferences", accessor: "owner_references", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::OwnerReference) },
        { key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "selfLink", accessor: "self_link", nilable: true, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
