# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Kubernetes::Apis::Rbac::V1beta1::ClusterRoleBinding < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"
    getter kind : String = "ClusterRoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Kubernetes::Apis::Rbac::V1beta1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Kubernetes::Apis::Rbac::V1beta1::Subject)

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1beta1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1beta1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Kubernetes::Apis::Rbac::V1beta1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Kubernetes::Apis::Rbac::V1beta1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @role_ref : Kubernetes::Apis::Rbac::V1beta1::RoleRef, @subjects : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Rbac::V1beta1
    alias ClusterRoleBinding = ::K8S::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleBinding
  end
end
