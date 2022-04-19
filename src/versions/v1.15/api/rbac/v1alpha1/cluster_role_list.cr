# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cluster_role"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1alpha1", "ClusterRoleList",
  namespace: "::K8S::Api::Rbac::V1alpha1",
  list: true,
  list_kind: K8S::Api::Rbac::V1alpha1::ClusterRole,
  description: "ClusterRoleList is a collection of ClusterRoles",
)
