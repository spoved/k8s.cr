require "./resource"

class ::K8S::Kubernetes::WatchEvent(T)
  include ::K8S::Kubernetes::Resource
  include JSON::Serializable
  include YAML::Serializable

  property api_version : String = "v1"
  property kind : String = "WatchEvent"
  property type : String
  property object : T

  def initialize(@type, @object); end
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent
