class K8S::Object(V)
  include Enumerable({String, V})
  include Iterable({String, V})

  # Deep casts *value* to the `V` type.
  class TypeError < Exception; end
end

require "./object/*"

module ::K8S::Kubernetes::Object
  # TODO: Define abstract methods.
  # abstract def to_h
  # abstract def each
  # abstract def ==(value)
  # abstract def ===(value)

  # abstract def dup
  # abstract def clone
  # abstract def []=(*args)
  # abstract def []=(key, value)
  # abstract def []?(*keys)
  # abstract def [](*keys)

  # abstract def dig?(keys : Enumerable)
  # abstract def dig?(*keys)
  # abstract def dig(keys : Enumerable)
  # abstract def dig(*keys)

  # abstract def merge(*values, **options)
  # abstract def merge(*values, **options, &block)
  # abstract def merge!(*values, **options)
  # abstract def merge!(*values, **options, &block)

  # abstract def reverse_merge(other = nil, *values, **options)
  # abstract def reverse_merge(other = nil, *values, **options, &block)
  # abstract def reverse_merge!(other = nil, *values, **options)
  # abstract def reverse_merge!(other = nil, *values, **options, &block)

  # abstract def replace(other)
end

class K8S::Object(V)
  extend ClassMethods(V)

  include ::K8S::Kubernetes::Object

  @__hash__ : Hash(String, V)

  # List of methods delegated to the underlying `Hash` returning `self`.
  CHAINED_HASH_METHODS = %w(reject! select! compact! clear)

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

  # Initializes `K8S::Object` with the given *hash* object.
  def initialize(hash : Iterable({H, J})? = nil) forall H, J
    @__hash__ = Hash(String, V).new

    if hash
      hash.each do |key, value|
        @__hash__[key.to_s] = self.class.deep_cast_value(value)
      end
    end
  end

  # Returns a new `K8S::Object`, with a shallow copy of the underlying `Hash`.
  #
  # Use `#clone` if you want a deep copy.
  def dup
    self.class.new @__hash__.dup
  end

  # Returns a new `K8S::Object`, with a deep copy of the underlying `Hash`.
  #
  # Use `#dup` if you want a shallow copy.
  def clone
    self.class.new.merge! @__hash__
  end

  # See `Hash#[]=`.
  def []=(*args)
    args = args.to_a
    # Split *args* into the *path* to nested hash where, under the *key*
    # lies the *value* we overwrite.
    path, key, value = args[0...-2], args[args.size - 2], args[args.size - 1]
    # dig 'em hash
    dig(path).as(Hash(String, V))[key.as(String)] = self.class.deep_cast_value(value)
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
      memo.as?(Hash(String, V)).try(&.[]?(key)) || break
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
    when K8S::Object(String, V) then @__hash__ = other.to_h
    when Hash(String, V)        then @__hash__ = other
    else
      clear
      merge!(other)
    end
    self
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    new(Hash(String, V).new(ctx, node))
  end

  def self.new(pull : ::JSON::PullParser)
    new(Hash(String, V).new(pull))
  end
end
