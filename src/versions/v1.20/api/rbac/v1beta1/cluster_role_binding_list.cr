# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cluster_role_binding"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1beta1", "ClusterRoleBindingList",
  namespace: "::K8S::Api::Rbac::V1beta1",
  list: true,
  list_kind: K8S::Api::Rbac::V1beta1::ClusterRoleBinding,
  description: "ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.22.",
)
