require "json"
require "yaml"
require "./resource"

abstract class ::K8S::Kubernetes::ResourceList(T)
  include ::K8S::Kubernetes::Object
  include ::K8S::Kubernetes::Resource
  include ::K8S::Kubernetes::Resource::List(T)
  include JSON::Serializable
  include YAML::Serializable

  def self.new(pull : ::JSON::PullParser)
    ::K8S::Kubernetes::Resource.new(pull)
  end

  getter items : Array(T) = Array(T).new
end

class ::K8S::Api::Core::V1::List < ::K8S::Kubernetes::ResourceList(::K8S::Resource | ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResourceList)
  @[::JSON::Field(key: "apiVersion")]
  @[::YAML::Field(key: "apiVersion")]
  getter api_version : String = "v1"
  getter kind : String = "List"
  getter metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta? = nil
end
