# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Kubernetes::Apis::Rbac::V1beta1::ClusterRole
    getter api_version : String = "rbac/v1beta1"
    getter kind : String = "ClusterRole"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this ClusterRole
    property rules : Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule)

    YAML.mapping({
      api_version: {type: String, default: "rbac/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRole", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: "rules"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "rbac/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRole", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      rules:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: "rules"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1beta1
    alias ClusterRole = Kubernetes::Apis::Rbac::V1beta1::ClusterRole
  end
end