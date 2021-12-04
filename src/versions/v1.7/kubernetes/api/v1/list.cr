# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
# List is a generic list of resources
class Kubernetes::Api::V1::List < ::K8S::Kubernetes::ResourceList(Kubernetes::Api::V1::)
  include ::K8S::Kubernetes::Resource::List
include ::JSON::Serializable
include ::YAML::Serializable

getter api_version : String = "v1"
getter kind : String = "List"
# list of resources
property items : Array(Kubernetes::Resource) | Nil

# Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

::YAML.mapping({ 
api_version: { type: String, default: "v1", key: "apiVersion", setter: false },
kind: { type: String, default: "List", key: "kind", setter: false },
items: { type: Array(Kubernetes::Resource), nilable: true, key: "items", getter: false, setter: false },
metadata: { type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false }
}, true)

::JSON.mapping({ 
api_version: { type: String, default: "v1", key: "apiVersion", setter: false },
kind: { type: String, default: "List", key: "kind", setter: false },
items: { type: Array(Kubernetes::Resource), nilable: true, key: "items", getter: false, setter: false },
metadata: { type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false }
}, true)

def initialize(*, @items : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
end

end

end

