# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ResourceQuotaList is a list of ResourceQuota items.
class K8S::V1_6_1::Kubernetes::Api::V1::ResourceQuotaList
  # Items is a list of ResourceQuota objects.More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ResourceQuota)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ResourceQuotaList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ResourceQuota), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ResourceQuotaList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ResourceQuota), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ResourceQuotaList"
    @kind = "v1"
  end

  # list or watch objects of kind ResourceQuota
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a ResourceQuota
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # delete collection of ResourceQuota
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind ResourceQuota
  def self.get(field_selector : String?, label_selector : String?, pretty : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
