require "./object"

class K8S::Internals::HashObject(V)
  include Enumerable({String, V})
  include Iterable({String, V})

  # Deep casts *value* to the `V` type.
  class TypeError < Exception; end
end

require "./hash_object/*"
require "../../ext/hashdiff"

class K8S::Internals::HashObject(V)
  extend ClassMethods(V)

  include ::K8S::Internals::Object

  @__hash__ : Hash(String, V)

  # List of methods delegated to the underlying `Hash` returning `self`.
  CHAINED_HASH_METHODS = %w(reject! select! compact! clear)

  def initialize
    @__hash__ = Hash(String, V).new
  end

  macro method_missing(call)
    {% if CHAINED_HASH_METHODS.includes?(call.name.stringify) %}
      @__hash__.{{call}}
      self
    {% else %}
      @__hash__.{{call}}
    {% end %}
  end

  # See `Hash#to_h`.
  delegate :to_h, to: @__hash__

  # See `Hash#==`.
  delegate :==, :===, to: @__hash__

  # See `Hash#each`.
  delegate :each, to: @__hash__

  # ditto
  def_equals @__hash__

  # ditto
  def ==(other : NamedTuple)
    self == self.class.deep_cast_value(other)
  end

  # Initializes `K8S::Internals::HashObject` with the given *hash* object.
  def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
    @__hash__ = Hash(String, V).new

    if hash
      @__hash__ = self.class.deep_cast_value(hash).as(Hash(String, V))
    end
  end

  def diff(other : K8S::Internals::HashObject)
    ::Hashdiff.diff(@__hash__, other.to_h)
  end

  def diff(other)
    ::Hashdiff.diff(@__hash__, other)
  end

  # Returns a new `K8S::Object`, with a shallow copy of the underlying `Hash`.
  #
  # Use `#clone` if you want a deep copy.
  def dup
    self.class.new @__hash__.dup
  end

  # Returns a new `K8S::Internals::HashObject`, with a deep copy of the underlying `Hash`.
  #
  # Use `#dup` if you want a shallow copy.
  def clone
    self.class.new.merge! @__hash__
  end

  def delete(key)
    @__hash__.delete(key.to_s)
  end

  def [](key : Symbol)
    self.[key.to_s]
  end

  def []?(key : Symbol)
    self.[key.to_s]?
  end

  def []=(key : Symbol, value : T) forall T
    self.[key.to_s] = value
  end

  def dig(key : Symbol)
    self.dig(key.to_s)
  end

  # See `Hash#[]=`.
  def []=(*args)
    args = args.to_a
    # Split *args* into the *path* to nested hash where, under the *key*
    # lies the *value* we overwrite.
    path, key, value = args[0...-2], args[args.size - 2], args[args.size - 1]
    # dig 'em hash
    key = key.to_s unless key.is_a?(String)
    dig(path).as(Hash(String, V))[key] = self.class.deep_cast_value(value)
  end

  # See `Hash#[]=`.
  def []=(key, value)
    @__hash__[key] = self.class.deep_cast_value(value)
  end

  # See `#dig?`.
  def []?(*keys)
    dig? keys
  end

  # See `#dig`.
  def [](*keys)
    dig keys
  end

  # Extracts the nested value specified by the sequence of *keys* objects
  # by calling `#[]?` at each step, returns `nil`
  # if any intermediate step is `nil`.
  def dig?(keys : Enumerable)
    keys.reduce(@__hash__) do |memo, key|
      key = key.to_s unless key.is_a?(String)
      val = memo.as?(Hash(String, V)).try(&.[]?(key))
      break if val.nil?
      val
    end
  end

  # ditto
  def dig?(*keys)
    dig?(keys)
  end

  # Extracts the nested value specified by the sequence of *keys* objects
  # by calling `#[]` at each step, raises
  # if any intermediate step is `nil`.
  def dig(keys : Enumerable)
    keys.reduce(@__hash__) do |memo, key|
      key = key.to_s unless key.is_a?(String)
      memo.as(Hash(String, V))[key]
    end
  end

  # ditto
  def dig(*keys)
    dig(keys)
  end

  # Performs deep merge of `self` with given other *values*
  # and returns copy of `self`.
  #
  # See `Hash#merge`.
  def merge(*values, **options)
    dup.merge!(*values, **options)
  end

  # ditto
  def merge(*values, **options, &block)
    dup.merge!(*values, **options) { |*args| yield *args }
  end

  # Destructive version of `#merge`.
  def merge!(*values, **options)
    self.class.deep_merge!(@__hash__, *values, **options)
    self
  end

  # ditto
  def merge!(*values, **options, &block)
    self.class.deep_merge!(@__hash__, *values, **options) { |*args| yield *args }
    self
  end

  # Merges the caller into *other*. For example,
  #
  # ```
  # options = options.reverse_merge(size: 25, velocity: 10)
  # ```
  #
  # is equivalent to
  #
  # ```
  # options = { size: 25, velocity: 10 }.merge(options)
  # ```
  #
  # This is particularly useful for initializing an options hash with default values.
  def reverse_merge(other = nil, *values, **options)
    dup.reverse_merge!(other, *values, **options)
  end

  # ditto
  def reverse_merge(other = nil, *values, **options, &block)
    dup.reverse_merge!(other, *values, **options) { |*args| yield *args }
  end

  # Destructive version of `#reverse_merge`.
  def reverse_merge!(other = nil, *values, **options)
    values = {self, other} + values + {options}
    hash = self.class.new.merge!(*values.reverse)
    replace(hash)
  end

  # ditto
  def reverse_merge!(other = nil, *values, **options, &block)
    values = {self, other} + values + {options}
    hash = self.class.new.merge!(*values.reverse) { |*args| yield *args }
    replace(hash)
  end

  # Replaces underlying `Hash` with given *other*.
  #
  # Returns `self`.
  def replace(other)
    case other
    when ::K8S::Internals::HashObject(V) then @__hash__ = other.to_h
    when Hash(String, V)                 then @__hash__ = other
    else
      clear
      merge!(other)
    end
    self
  end

  def self.new(pull : ::JSON::PullParser)
    self.new(Hash(String, JSON::Any).new(pull))
  rescue ex
    Log.error &.emit "Error parsing JSON: #{ex.message}", klass: self.to_s
    raise ex
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    self.new(Hash(String, JSON::Any).new(ctx, node))
  rescue ex
    Log.error &.emit "Error parsing YAML: #{ex.message}", klass: self.to_s
    raise ex
  end

  def to_json(*args)
    @__hash__.to_json(*args)
  end

  def to_yaml(*args)
    @__hash__.to_yaml(*args)
  end
end
