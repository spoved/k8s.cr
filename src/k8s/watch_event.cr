require "./resource"

struct ::K8S::Kubernetes::WatchEvent(T)
  private getter __event__ : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent
  getter object : T

  def initialize(event : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent)
    @__event__ = event

    @object = {% if ::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR < 16 %}
      T.from_json(event.object.raw)
    {% else %}
      T.new(event.object)
    {% end %}
  end

  macro method_missing(call)
    @__event__.{{call}}
  end

  def self.new(pull : JSON::PullParser)
    new(::K8S::Apimachinery::Apis::Meta::V1::WatchEvent.new(pull))
  end
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent(K8S::Kubernetes::Resource)
