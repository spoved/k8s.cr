module ::K8S::Internals::Object
  abstract def to_h
  abstract def each
  abstract def ==(value)
  abstract def ===(value)
  abstract def diff(other)

  abstract def dup
  abstract def clone
  abstract def []=(*args)
  abstract def []=(key, value)
  abstract def []?(*keys)
  abstract def [](*keys)

  abstract def dig?(keys : Enumerable)
  abstract def dig?(*keys)
  abstract def dig(keys : Enumerable)
  abstract def dig(*keys)

  abstract def merge(*values, **options)
  abstract def merge!(*values, **options)
  abstract def reverse_merge(other = nil, *values, **options)
  abstract def reverse_merge!(other = nil, *values, **options)

  abstract def replace(other)
end
