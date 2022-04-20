# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cluster_role"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1beta1", "ClusterRoleList",
  namespace: "::K8S::Api::Rbac::V1beta1",
  list: true,
  list_kind: K8S::Api::Rbac::V1beta1::ClusterRole,
  description: "ClusterRoleList is a collection of ClusterRoles. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoles, and will no longer be served in v1.20.",
)
