# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./role"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1alpha1", "RoleList",
  namespace: "::K8S::Api::Rbac::V1alpha1",
  list: true,
  list_kind: K8S::Api::Rbac::V1alpha1::Role,
  description: "RoleList is a collection of Roles. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleList, and will no longer be served in v1.22.",
)
