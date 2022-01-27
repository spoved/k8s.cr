# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::OwnerReference; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::OwnerReference`.
  module Types::Apimachinery::Apis::Meta::V1::OwnerReference
    # API version of the referent.
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    abstract def block_owner_deletion : ::Bool?
    # :ditto:
    abstract def block_owner_deletion! : ::Bool
    # :ditto:
    abstract def block_owner_deletion? : ::Bool?
    # :ditto:
    abstract def block_owner_deletion=(value : ::Bool)
    # If true, this reference points to the managing controller.
    abstract def controller : ::Bool?
    # :ditto:
    abstract def controller! : ::Bool
    # :ditto:
    abstract def controller? : ::Bool?
    # :ditto:
    abstract def controller=(value : ::Bool)
    # Kind of the referent. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # UID of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
  end

  # OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: nil, read_only: false, description: "API version of the referent.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    block_owner_deletion: {key: "blockOwnerDeletion", accessor: "block_owner_deletion", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    controller: {key: "controller", accessor: "controller", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If true, this reference points to the managing controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: false, default: nil, read_only: false, description: "UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::OwnerReference < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::OwnerReference
    k8s_object_accessor("apiVersion", api_version : String, false, false, "API version of the referent.")
    k8s_object_accessor("blockOwnerDeletion", block_owner_deletion : ::Bool, true, false, "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.")
    k8s_object_accessor("controller", controller : ::Bool, true, false, "If true, this reference points to the managing controller.")
    k8s_object_accessor("kind", kind : String, false, false, "Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")
    k8s_object_accessor("name", name : String, false, false, "Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)")
    k8s_object_accessor("uid", uid : String, false, false, "UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)")

    def initialize(*, api_version : String? = nil, block_owner_deletion : ::Bool? = nil, controller : ::Bool? = nil, kind : String? = nil, name : String? = nil, uid : String? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["blockOwnerDeletion"] = block_owner_deletion
      self.["controller"] = controller
      self.["kind"] = kind
      self.["name"] = name
      self.["uid"] = uid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "blockOwnerDeletion", accessor: "block_owner_deletion", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "controller", accessor: "controller", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
