require "./resource"

class ::K8S::Kubernetes::WatchEvent(T) < ::K8S::Kubernetes::Resource
  property api_version : String = "v1"
  property kind : String = "WatchEvent"
  property type : String
  property object : T
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent
