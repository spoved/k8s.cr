require "json"

module K8S::Internals::HashObject::ClassMethods(V)
  def deep_cast_value(value)
    case value
    when Array(V)                        then value
    when Array                           then value.map { |v| deep_cast_value(v).as(V) }
    when Set(V)                          then value
    when Set                             then value.map { |v| deep_cast_value(v).as(V) }.to_set
    when Tuple                           then deep_cast_value(value.to_a)
    when NamedTuple                      then deep_cast_value(value.to_h)
    when ::K8S::Internals::HashObject(V) then value.to_h
    when ::K8S::Internals::HashObject    then deep_cast_value(value.to_h)
    when Hash(Symbol, V)                 then value.transform_keys &.to_s
    when Hash(String, V)                 then value
    when Hash
      value.each_with_object({} of String => V) do |(k, v), memo|
        memo[k.to_s] = deep_cast_value(v)
      end
    else
      value.as(V)
    end
  end

  # :nodoc:
  protected def internal_deep_merge!(hash, *values, **options, &block)
    values += {options}
    values.each do |other_hash|
      other_hash.try &.each do |other_key, other_value|
        other_key = other_key.to_s
        other_value = yield(other_key, other_value) || other_value
        other_value = deep_cast_value(other_value)

        original_value = hash[other_key]?
        if original_value.is_a?(Hash) && other_value.is_a?(Hash)
          other_value = deep_merge!(original_value.dup, other_value)
        end

        hash[other_key] = deep_cast_value(other_value)
      end
    end
    hash
  end

  # :nodoc:
  def deep_merge!(hash, *values, **options, &block)
    internal_deep_merge!(hash, *values, **options) do |other_key, other_value|
      if hash.has_key?(other_key)
        yield other_key, hash[other_key], other_value
      end
    end
  end

  # :nodoc:
  def deep_merge!(hash, *values, **options)
    internal_deep_merge!(hash, *values, **options) { }
  end
end
