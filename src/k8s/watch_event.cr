require "./resource"

struct ::K8S::Kubernetes::WatchEvent(T)
  private getter __event__ : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
  getter object : T

  def initialize(event : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent)
    @__event__ = event
    @object = T.from_json(event.object.raw)
  end

  macro method_missing(call)
    @__event__.{{call}}
  end
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent
