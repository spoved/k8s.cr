# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./role_binding"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1beta1", "RoleBindingList",
  namespace: "::K8S::Api::Rbac::V1beta1",
  list: true,
  list_kind: K8S::Api::Rbac::V1beta1::RoleBinding,
  description: "RoleBindingList is a collection of RoleBindings",
)
