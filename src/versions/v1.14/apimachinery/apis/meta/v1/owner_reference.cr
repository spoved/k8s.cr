# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::OwnerReference; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::OwnerReference`.
  module Types::Apimachinery::Apis::Meta::V1::OwnerReference
    alias ValueType = String | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # API version of the referent.
    abstract def api_version : String
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
    abstract def block_owner_deletion=(value : ::Bool?)
    # If true, this reference points to the managing controller.
    abstract def controller : ::Bool?
    # :ditto:
    abstract def controller! : ::Bool
    # :ditto:
    abstract def controller? : ::Bool?
    # :ditto:
    abstract def controller=(value : ::Bool?)
    # Kind of the referent. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # UID of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    abstract def uid : String
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
  end

  # OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: nil, read_only: false, description: "API version of the referent."},
    block_owner_deletion: {key: "blockOwnerDeletion", accessor: "block_owner_deletion", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."},
    controller: {key: "controller", accessor: "controller", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "If true, this reference points to the managing controller."},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)"},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)"},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: false, default: nil, read_only: false, description: "UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)"},
  )]
  class Apimachinery::Apis::Meta::V1::OwnerReference < ::K8S::Types::Apimachinery::Apis::Meta::V1::OwnerReference::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::OwnerReference
    include ::K8S::Kubernetes::Object

    # API version of the referent.
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String)
      self.["apiVersion"] = value
    end

    # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    def block_owner_deletion : ::Bool?
      self.["blockOwnerDeletion"].as(::Bool?)
    end

    # :ditto:
    def block_owner_deletion! : ::Bool
      self.["blockOwnerDeletion"].as(::Bool?).not_nil!
    end

    # :ditto:
    def block_owner_deletion? : ::Bool?
      self.["blockOwnerDeletion"]?.as(::Bool?)
    end

    # :ditto:
    def block_owner_deletion=(value : ::Bool?)
      self.["blockOwnerDeletion"] = value
    end

    # If true, this reference points to the managing controller.
    def controller : ::Bool?
      self.["controller"].as(::Bool?)
    end

    # :ditto:
    def controller! : ::Bool
      self.["controller"].as(::Bool?).not_nil!
    end

    # :ditto:
    def controller? : ::Bool?
      self.["controller"]?.as(::Bool?)
    end

    # :ditto:
    def controller=(value : ::Bool?)
      self.["controller"] = value
    end

    # Kind of the referent. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds))
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String)
      self.["kind"] = value
    end

    # Name of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)](http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names))
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # UID of the referent. More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    def uid : String
      self.["uid"].as(String)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "blockOwnerDeletion", accessor: "block_owner_deletion", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "controller", accessor: "controller", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
