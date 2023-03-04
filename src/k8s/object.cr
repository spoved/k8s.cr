require "./internals"
require "./error"
require "./macros"
require "../ext/json_yaml"

# An abstract struct that serves as the base for all Kubernetes objects in the K8S module.
abstract struct K8S::Kubernetes::Object
  # A private getter method to access the internal `GenericObject` object.
  private getter __object__ : K8S::Internals::GenericObject

  # Initializes a new object with the given hash object, or an empty object if `nil` is given.
  def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
    @__object__ = K8S::Internals::GenericObject.new(hash)
    # Calls a protected method to validate the object after it has been created.
    _init_validate!
  end

  # A protected method that is called after the object is initialized, which can be overridden by subclasses to add validation.
  protected def _init_validate!
  end

  # Initializes a new object with the given `GenericObject` object.
  def initialize(@__object__ : K8S::Internals::GenericObject)
    # Calls a protected method to validate the object after it has been created.
    _init_validate!
  end

  # A macro that is used to catch all method calls that are not defined in the class and forward them to the `GenericObject` object.
  macro method_missing(call)
    @__object__.{{call}}
  end

  # Creates a new object from the JSON `PullParser` object.
  def self.new(pull : ::JSON::PullParser)
    new(K8S::Internals::GenericObject.new(pull))
  end

  # Creates a new object from the YAML parse context and node.
  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    new(K8S::Internals::GenericObject.new(ctx, node))
  end

  # Compares the object with another `GenericObject` object.
  def ==(other : K8S::Internals::GenericObject)
    @__object__ == other
  end

  # Calculates the difference between the object and another object of type `HashObject` or `Object` and returns it as an array.
  def diff(other : K8S::Internals::HashObject | K8S::Kubernetes::Object)
    ::Hashdiff.diff(@__object__.to_h, other.to_h)
  end
end

# This method deep-casts the value of a Kubernetes object to a generic object.
# It calls the `deep_cast_value` method of the `GenericObject` class and passes
# the object's `to_h` hash representation as an argument.
def K8S::Internals::GenericObject.deep_cast_value(value : K8S::Kubernetes::Object)
  self.deep_cast_value(value.to_h)
end

# This module provides methods to compare and compute differences between two hashes.
module Hashdiff
  # This method checks if two Kubernetes or generic objects are similar.
  # It always returns true since it doesn't actually compare the objects.
  # It takes two objects as arguments, and any additional options are passed
  # as keyword arguments.
  def similar?(obja : K8S::Kubernetes::Object | K8S::Internals::GenericObject, objb : K8S::Kubernetes::Object | K8S::Internals::GenericObject, **options) : Bool
    true
  end

  # This method computes the difference between two Kubernetes or generic objects.
  # It calls the `_diff` method with the `to_h` hash representations of the objects.
  # Any additional options are passed as keyword arguments.
  def _diff(obj1 : ::K8S::Kubernetes::Object | ::K8S::Internals::HashObject, obj2 : ::K8S::Kubernetes::Object | ::K8S::Internals::HashObject, **options)
    _diff(obj1.to_h, obj2.to_h, **options)
  end
end

struct ::K8S::GenericObject < K8S::Kubernetes::Object; end

# Cycle through all object subclasses and create initializers
macro finished
  {% for klass in K8S::Kubernetes::Object.all_subclasses %}{% if !klass.abstract? %}

  # Extract the annotations that describe how the object's properties should be handled
  {% annos = klass.annotations(::K8S::ObjectProperties) %}

  # Only generate the struct if there are any relevant annotations
  {% if annos.size > 0 %}
  struct {{klass.id}}
    def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
      # Create a new GenericObject and store it in a private instance variable
      @__object__ = K8S::Internals::GenericObject.new(hash)

      # Check to see if the values are stored under the correct key,
      # if they are not, then we need to move them to the correct key
      {% for anno in annos %}{% for name, value in anno.named_args %}
      {% if value[:key] && value[:key] != value[:name] %}
      if @__object__[{{value[:name]}}]?
        # If the property is nilable, then allow nil to be set
        {% if value[:nilable] %}
        @__object__[{{value[:key]}}] = @__object__.delete({{value[:name]}})
        {% else %}
        # Otherwise, delete the property if its value is nil, otherwise move it to the correct key
        %val = @__object__.delete({{value[:name]}})
        @__object__[{{value[:key]}}] = %val unless %val.nil?
        {% end %}
      end
      {% end %}
      {% end %}{% end %}

      # Perform any additional validation that needs to occur in the initializer
      _init_validate!
    end
  end

  # End if statement for annotations check
  {% end %}

  # End if statement for abstract class check
  {% end %}{% end %}
end
