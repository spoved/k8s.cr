module ::K8S::Internals::Object
  # Define abstract method for converting object to hash
  abstract def to_h
  # Define abstract method for iterating over object
  abstract def each
  # Define abstract method for testing object equality
  abstract def ==(value)
  # Define abstract method for testing object sameness
  abstract def ===(value)
  # Define abstract method for calculating difference between objects
  abstract def diff(other)

  # Define abstract method for creating a copy of the object
  abstract def dup
  # Define abstract method for creating a copy of the object with frozen state
  abstract def clone
  # Define abstract method for setting values by index
  abstract def []=(*args)
  # Define abstract method for setting a single value by key
  abstract def []=(key, value)
  # Define abstract method for testing if the object contains keys
  abstract def []?(*keys)
  # Define abstract method for accessing values by keys
  abstract def [](*keys)

  # Define abstract method for testing if the object contains keys in a nested fashion
  abstract def dig?(keys : Enumerable)
  # Define abstract method for testing if the object contains keys in a nested fashion
  abstract def dig?(*keys)
  # Define abstract method for accessing values by keys in a nested fashion
  abstract def dig(keys : Enumerable)
  # Define abstract method for accessing values by keys in a nested fashion
  abstract def dig(*keys)

  # Define abstract method for merging values with the object
  abstract def merge(*values, **options)
  # Define abstract method for merging values with the object in-place
  abstract def merge!(*values, **options)
  # Define abstract method for merging values with the object in reverse
  abstract def reverse_merge(other = nil, *values, **options)
  # Define abstract method for merging values with the object in reverse and in-place
  abstract def reverse_merge!(other = nil, *values, **options)

  # Define abstract method for replacing the contents of the object with another object
  abstract def replace(other)
end
