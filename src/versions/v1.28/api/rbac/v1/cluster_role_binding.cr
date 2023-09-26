# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./role_ref"
require "./subject"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1", "ClusterRoleBinding",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "role_ref", kind: ::K8S::Api::Rbac::V1::RoleRef, key: "roleRef", nilable: false, read_only: false, description: "RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable."},
    {name: "subjects", kind: ::Array(::K8S::Api::Rbac::V1::Subject), key: "subjects", nilable: true, read_only: false, description: "Subjects holds references to the objects the role applies to."},

  ],
  description: "ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.",
  versions: [{group: "rbac.authorization.k8s.io", kind: "ClusterRoleBinding", version: "v1"}],
)
