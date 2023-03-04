require "json"

module K8S::Internals::HashObject::ClassMethods(V)
  # Method for casting values in a hash to a specific type recursively.
  def deep_cast_value(value)
    case value
    when JSON::Any, YAML::Any    # Check for JSON or YAML types
      deep_cast_value(value.raw) # Recurse to get the actual value
    when Array(V)                # Array of specific type
      value
    when Array                                   # Any other array type
      value.map { |v| deep_cast_value(v).as(V) } # Recursively cast each value
    when Set(V)                                  # Set of specific type
      value
    when Set                                            # Any other set type
      value.map { |v| deep_cast_value(v).as(V) }.to_set # Recursively cast each value and convert to set
    when Tuple                                          # Tuple
      deep_cast_value(value.to_a)                       # Convert to an array and recursively cast each value
    when NamedTuple                                     # Named tuple
      deep_cast_value(value.to_h)                       # Convert to a hash and recursively cast each value
    when ::K8S::Internals::HashObject(V)                # K8S hash object of specific type
      value.to_h                                        # Convert to a hash
    when ::K8S::Internals::HashObject                   # K8S hash object of any type
      deep_cast_value(value.to_h)                       # Convert to a hash and recursively cast each value
    when Hash(Symbol, V)                                # Symbol keys and specific type values
      value.transform_keys &.to_s                       # Convert symbol keys to strings
    when Hash(String, V)                                # String keys and specific type values
      value
    when Hash                                                     # Any other hash type
      value.each_with_object({} of String => V) do |(k, v), memo| # Iterate over hash and create new hash with string keys and casted values
        memo[k.to_s] = deep_cast_value(v)
      end
    else
      value.as(V) # Cast to the specified type
    end
  end

  # Method for recursively merging hashes, with an optional block to handle conflicts.
  protected def internal_deep_merge!(hash, *values, **options, &block)
    values += {options} # Add options hash to values array

    # Loop through each value and recursively merge it into the hash
    values.each do |other_hash|
      other_hash.try &.each do |other_key, other_value|
        other_key = other_key.to_s
        other_value = yield(other_key, other_value) || other_value # If a block is given, yield to handle conflicts

        # Deeply cast other_value to its corresponding type
        other_value = deep_cast_value(other_value)

        original_value = hash[other_key]?

        # If both the original value and the other value are hashes, merge them
        if original_value.is_a?(Hash) && other_value.is_a?(Hash)
          other_value = deep_merge!(original_value.dup, other_value)
        end

        # Set the value in the hash
        hash[other_key] = deep_cast_value(other_value)
      end
    end

    # Return the merged hash
    hash
  end

  # Method for merging hashes, with an optional block to handle conflicts.
  def deep_merge!(hash, *values, **options, &block)
    internal_deep_merge!(hash, *values, **options) do |other_key, other_value|
      # If a block is given, yield to handle conflicts
      if hash.has_key?(other_key)
        yield other_key, hash[other_key], other_value
      end
    end
  end

  # Method for merging hashes with no conflict resolution.
  def deep_merge!(hash, *values, **options)
    internal_deep_merge!(hash, *values, **options) { }
  end
end
