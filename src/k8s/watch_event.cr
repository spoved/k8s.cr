# Import the Resource module for later use
require "./resource"

# Define a struct for wrapping a `WatchEvent`
struct ::K8S::Kubernetes::WatchEvent(T)
  # Define a private getter for the raw `WatchEvent`
  private getter __event__ : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent

  # Define a public getter for the WatchEvent's object
  getter object : T

  # Create a new `WatchEvent` struct that takes a raw WatchEvent as input
  def initialize(event : ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent)
    # Store the raw `WatchEvent` in the __event__ variable
    @__event__ = event

    # Extract the object from the `WatchEvent`
    @object = {% if ::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR < 16 %}
                # For older versions of Kubernetes, parse the raw JSON and convert it to the desired type
                T.from_json(event.object.raw).as(T)
              {% else %}
                # For newer versions of Kubernetes, directly create an object of the desired type from the `WatchEvent`
                T.new(event.object).as(T)
              {% end %}
  end

  # Define a macro to forward any method calls that aren't defined in this struct to the raw `WatchEvent` object
  macro method_missing(call)
    @__event__.{{call}}
  end

  # Define a class method for creating a new `WatchEvent` from a JSON::PullParser
  def self.new(pull : JSON::PullParser)
    new(::K8S::Apimachinery::Apis::Meta::V1::WatchEvent.new(pull))
  end
end

# Define an alias for the `WatchEvent` struct with the Resource module as the generic type parameter
alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent(K8S::Kubernetes::Resource)
