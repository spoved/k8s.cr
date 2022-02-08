require "./object"

abstract struct K8S::Internals::ArrayObject(V, T)
  # include Enumerable(T)
  # include Iterable(T)

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

  @__array__ : Array(V)

  def initialize
    @__array__ = Array(V).new
  end

  def initialize(@__array__ : Array(V)); end

  def initialize(array : Array(T))
    @__array__ = array.map { |v| unwrap_value(v) }
  end

  delegate :size, to: @__array__

  # def_equals @__array__

  # Returns a new `K8S::Internals::ArrayObject`, with a shallow copy of the underlying `Array`.
  #
  # Use `#clone` if you want a deep copy.
  def dup
    self.class.new @__array__.dup
  end

  # Returns a new `K8S::Internals::ArrayObject`, with a deep copy of the underlying `Array`.
  #
  # Use `#dup` if you want a shallow copy.
  def clone
    self.class.new.merge! @__array__
  end

  def diff(other : ArrayObject)
    ::Hashdiff.diff(@__array__, other.to_a)
  end

  def diff(other)
    ::Hashdiff.diff(@__array__, other)
  end

  def unsafe_fetch(index : Int)
    wrap_value(@__array__.unsafe_fetch(index))
  end

  abstract def wrap_value(value : V) : T
  abstract def unwrap_value(value : T) : V

  def <<(value : T)
    push(value)
  end

  def push(value : T)
    @__array__ << unwrap_value(value)
  end
end
