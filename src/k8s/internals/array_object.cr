require "./object"

abstract struct K8S::Internals::ArrayObject(V, T)
  include Indexable(T)

  # Deep casts *value* to the `V` type.
  class TypeError < Exception; end
end

require "hashdiff"
require "./array_object/*"

# require "./hash_object/generic_object"

abstract struct K8S::Internals::ArrayObject(V, T)
  extend ClassMethods(V, T)
  # include ::K8S::Internals::Object

  @__array__ : Array(K8S::Internals::Types::GenericObject::Value) = Array(K8S::Internals::Types::GenericObject::Value).new

  def initialize; end

  def initialize(@__array__ : Array(K8S::Internals::Types::GenericObject::Value)); end

  def initialize(array : Array(V))
    @__array__ = array.map { |v| cast_value(v) }
  end

  def initialize(array : Array(T))
    @__array__ = array.map { |v| cast_value(unwrap_value(v)) }
  end

  delegate :size, :clear, :object_id, to: @__array__

  def same?(other) : Bool
    other.is_a?(self.class) && self.same?(other.@__array__)
  end

  def same?(other : Array) : Bool
    @__array__.object_id == other.object_id
  end

  def object_id
    @__array__.object_id
  end

  # def_equals @__array__

  # Returns a new `K8S::Internals::ArrayObject`, with a shallow copy of the underlying `Array`.
  #
  # Use `#clone` if you want a deep copy.
  def dup
    self.class.new(@__array__.dup)
  end

  # Returns a new `K8S::Internals::ArrayObject`, with a deep copy of the underlying `Array`.
  #
  # Use `#dup` if you want a shallow copy.
  def clone
    self.class.new.merge!(@__array__)
  end

  def diff(other : ArrayObject)
    ::Hashdiff.diff(@__array__, other.to_a)
  end

  def diff(other)
    ::Hashdiff.diff(@__array__, other)
  end

  def unsafe_fetch(index : Int)
    value = @__array__.unsafe_fetch(index).as(Hash)
    obj = V.new
    obj.replace(value)
    wrap_value(obj)
  end

  abstract def wrap_value(value : V) : T
  abstract def unwrap_value(value : T) : V

  private def cast_value(value : V)
    value.@__hash__.as(K8S::Internals::Types::GenericObject::Value)
  end

  def <<(value : T)
    push(value)
  end

  def push(value : T)
    @__array__ << cast_value(unwrap_value(value))
  end

  def merge(other)
    case other
    when K8S::Internals::ArrayObject(V, T)
      @__array__.concat other.@__array__
    when Array(V)
      @__array__.concat other.map { |v| cast_value(v) }
    when Array(T)
      @__array__.concat other.map { |v| cast_value(unwrap_value(v)) }
    when Array(K8S::Internals::Types::GenericObject::Value)
      @__array__.concat other
    else
      raise TypeError.new "Expected #{self.class} or Array, got #{other.class}"
    end

    self
  end

  def replace(other)
    self.clear
    self.merge(other)

    # case other
    # when K8S::Internals::ArrayObject(V, T)
    #   @__array__ = other.@__array__
    # when Array(V)
    #   @__array__ = other.map { |v| cast_value(v) }
    # when Array(T)
    #   @__array__ = other.map { |v| cast_value(unwrap_value(v)) }
    # when Array(K8S::Internals::Types::GenericObject::Value)
    #   @__array__ = other
    # else
    #   raise TypeError.new "Expected #{self.class} or Array, got #{other.class}"
    # end
  end
end
