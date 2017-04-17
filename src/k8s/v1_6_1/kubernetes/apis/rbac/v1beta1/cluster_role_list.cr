# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ClusterRoleList is a collection of ClusterRoles
class K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleList
  # Items is a list of ClusterRoles
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::ClusterRole)

  # Standard object's metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ClusterRoleList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ClusterRole
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a ClusterRole
  def self.create(rules, pretty : String?, metadata = nil)
  end

  # delete collection of ClusterRole
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
