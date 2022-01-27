# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Rbac::V1::RoleBinding; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./role_ref"
require "./subject"

module K8S
  # Namespace holding the types for `Api::Rbac::V1::RoleBinding`.
  module Types::Api::Rbac::V1::RoleBinding
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta)
    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    abstract def role_ref : ::K8S::Api::Rbac::V1::RoleRef?
    # :ditto:
    abstract def role_ref! : ::K8S::Api::Rbac::V1::RoleRef
    # :ditto:
    abstract def role_ref? : ::K8S::Api::Rbac::V1::RoleRef?
    # :ditto:
    abstract def role_ref=(value : ::K8S::Api::Rbac::V1::RoleRef)
    # Subjects holds references to the objects the role applies to.
    abstract def subjects : ::Array(::K8S::Api::Rbac::V1::Subject)?
    # :ditto:
    abstract def subjects! : ::Array(::K8S::Api::Rbac::V1::Subject)
    # :ditto:
    abstract def subjects? : ::Array(::K8S::Api::Rbac::V1::Subject)?
    # :ditto:
    abstract def subjects=(value : ::Array(::K8S::Api::Rbac::V1::Subject))
  end

  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "RoleBinding", version: "v1", full: "io.k8s.api.rbac.v1.RoleBinding")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "rbac.authorization.k8s.io/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "RoleBinding", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    role_ref: {key: "roleRef", accessor: "role_ref", kind: "::K8S::Api::Rbac::V1::RoleRef", nilable: false, default: nil, read_only: false, description: "RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subjects: {key: "subjects", accessor: "subjects", kind: "::Array(::K8S::Api::Rbac::V1::Subject)", nilable: true, default: nil, read_only: false, description: "Subjects holds references to the objects the role applies to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Rbac::V1::RoleBinding < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Rbac::V1::RoleBinding
    k8s_object_accessor("apiVersion", api_version : String = "rbac.authorization.k8s.io/v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "RoleBinding", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("roleRef", role_ref : ::K8S::Api::Rbac::V1::RoleRef, false, false, "RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.")
    k8s_object_accessor("subjects", subjects : ::Array(::K8S::Api::Rbac::V1::Subject), true, false, "Subjects holds references to the objects the role applies to.")

    def initialize(*, api_version : String? = "rbac.authorization.k8s.io/v1", kind : String? = "RoleBinding", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, role_ref : ::K8S::Api::Rbac::V1::RoleRef? = nil, subjects : ::Array(::K8S::Api::Rbac::V1::Subject)? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["roleRef"] = role_ref
      self.["subjects"] = subjects
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "rbac.authorization.k8s.io/v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "RoleBinding", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "roleRef", accessor: "role_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Rbac::V1::RoleRef},
      {key: "subjects", accessor: "subjects", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Rbac::V1::Subject)},
    ])
  end

  module Resources::Rbac::V1
    alias RoleBinding = ::K8S::Api::Rbac::V1::RoleBinding
  end
end
