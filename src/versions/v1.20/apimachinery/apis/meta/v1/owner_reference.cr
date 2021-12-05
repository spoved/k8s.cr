# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
  @[::K8S::Properties(
    api_version: {type: String, nilable: false, key: "apiVersion", getter: false, setter: false},
    block_owner_deletion: {type: Bool, nilable: true, key: "blockOwnerDeletion", getter: false, setter: false},
    controller: {type: Bool, nilable: true, key: "controller", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    uid: {type: String, nilable: false, key: "uid", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::OwnerReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent.
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String

    # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    @[::JSON::Field(key: "blockOwnerDeletion")]
    @[::YAML::Field(key: "blockOwnerDeletion")]
    property block_owner_deletion : Bool | Nil

    # If true, this reference points to the managing controller.
    property controller : Bool | Nil

    # Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    property kind : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    property uid : String

    def initialize(*, @api_version : String, @kind : String, @name : String, @uid : String, @block_owner_deletion : Bool | Nil = nil, @controller : Bool | Nil = nil)
    end
  end
end
