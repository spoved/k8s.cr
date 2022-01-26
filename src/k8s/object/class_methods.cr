require "json"

module K8S::Object::ClassMethods(V)
  def deep_cast_value(value)
    case value
    when Array(V)         then value
    when Array            then value.map { |v| deep_cast_value(v).as(V) }
    when Set(V)           then value
    when Set              then value.map { |v| deep_cast_value(v).as(V) }.to_set
    when Tuple            then deep_cast_value(value.to_a)
    when NamedTuple       then deep_cast_value(value.to_h)
    when ::K8S::Object(V) then value.to_h
    when ::K8S::Object    then deep_cast_value(value.to_h)
    when Hash(Symbol, V)  then value.transform_keys &.to_s
    when Hash(String, V)  then value
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

  # # Deep casts *value* to the `V` type.
  # def deep_cast_value(value : M) forall M
  #   Log.trace { "deep_cast_value: #{value.inspect}" }
  #   # self.__deep_cast_value(value)
  #   {% begin %}
  #   case value
  #   {% for typ in V.resolve.union_types %}
  #   when {{typ.id.gsub(/\+$/, "")}}
  #     value.as({{typ.id.gsub(/\+$/, "")}})
  #   {% end %}
  #   when Hash
  #     __deep_cast_value(value.transform_keys &.to_s)
  #   else
  #     __deep_cast_value(value)
  #   end
  #   {% end %}
  # end

  # # :nodoc:
  # def __deep_cast_value(value : Hash(J, L)) forall J, L
  #   Log.trace { "__deep_cast_value (Hash(#{J}, #{L})): #{value.inspect}" }
  #   {% if L.union? %}
  #     return value.transform_values { |v| deep_cast_value(v) }
  #   {% elsif L <= NamedTuple %}
  #     return value.transform_values { |v| deep_cast_value(v) }
  #   {% elsif L >= V %}
  #     #   Log.trace { "found recursive Hash type: Hash({{J.id}}, {{L.id}})" }
  #     #   return deep_cast_value(value.transform_values { |v| deep_cast_value(v) })
  #   {% end %}

  #   {% begin %}
  #     {% _matches = V.resolve.union_types.select { |typ|
  #          if typ <= Hash
  #            ktyp = typ.type_vars.first
  #            vtyp = typ.type_vars.last
  #            if ktyp >= J && vtyp >= L && ktyp == J
  #              true
  #            else
  #              false
  #            end
  #          else
  #            false
  #          end
  #        } %}
  #     {% if _matches.empty? %}
  #       raise TypeError.new("cannot cast value of type Hash({{J.id}}, {{L.id}}) to one of types: {{V.id}}")
  #     {% elsif _matches.size == 1 %}
  #       # value.as({{_matches.first.id}})
  #       value.transform_values &.as({{_matches.first.type_vars.last.id}})
  #     {% else %}
  #       case value
  #       {% for typ in _matches %}
  #       when {{typ.id}}
  #         value.transform_values &.as({{typ.type_vars.last.id}})
  #         # value.as({{typ.id}})
  #       {% end %}
  #       else
  #         raise TypeError.new("failed to cast value of type Hash({{J.id}}, {{L.id}}) to one of types: {{_matches}}")
  #       end
  #     {% end %}
  #   {% end %}
  # end

  # # :nodoc:
  # def __deep_cast_value(value : Set(J)) forall J
  #   Log.trace { "__deep_cast_value (Set(#{J})): #{value.inspect}" }
  #   {% if J <= V || J <= Set %}
  #     Log.trace { "found recursive Set type: #{J}" }
  #     return value.map { |v| deep_cast_value(v) }
  #   {% end %}

  #   {% for typ in V.resolve.union_types %}
  #     {% if typ <= Set %}
  #       {% if typ.type_vars.find { |t| t <= J } %}
  #         return value.as(::Set({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
  #       {% end %}
  #     {% end %}
  #   {% end %}

  #   {% for typ in V.resolve.union_types %}{% if typ <= Set %}
  #     {% if typ.type_vars.first >= J %}
  #       return value.map { |v| v.as({{typ.type_vars.first.id}}) }
  #     {% end %}
  #   {% end %}{% end %}

  #   raise TypeError.new("cannot cast Set values of type #{J} to type #{V}")
  # end

  # def __deep_cast_value(value : Array(Tuple))
  #   Log.trace { "__deep_cast_value (Array(Tuple)): #{value.inspect}" }
  #   value.map { |v| deep_cast_value(v.to_a) }
  # end

  # # :nodoc:
  # def __deep_cast_value(value : Array(J)) forall J
  #   Log.trace { "__deep_cast_value (Array(#{J})): #{value.inspect}" }

  #   {% if J <= V || J <= Array %}
  #     Log.trace { "found recursive Array type: #{J}" }
  #     return value.map { |v| deep_cast_value(v) }
  #   {% end %}

  #   {% for typ in V.resolve.union_types %}{% if typ <= Array %}
  #     {% if typ.type_vars.find { |t| t <= J } %}
  #       return value.as(::Array({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
  #     {% end %}
  #   {% end %}{% end %}

  #   {% for typ in V.resolve.union_types %}{% if typ <= Array %}
  #     {% if typ.type_vars.first >= J %}
  #       return value.map &.as({{typ.type_vars.first.id}})
  #     {% end %}
  #   {% end %}{% end %}

  #   raise TypeError.new("cannot cast Array values of type #{J} to type #{V}")
  # end

  # # :nodoc:
  # def __deep_cast_value(value : L) forall L
  #   Log.trace { "__deep_cast_value (#{L}): #{value.inspect}" }

  #   case value
  #   when K8S::Object
  #     self.deep_cast_value(value.to_h)
  #   when Tuple
  #     self.deep_cast_value(value.to_a)
  #   when NamedTuple
  #     self.deep_cast_value(value.to_h.transform_keys &.to_s)
  #   else
  #     {% if V.resolve.union? %}
  #       case value
  #       {% for typ in V.resolve.union_types %}
  #       when ::{{typ.id.gsub(/\+$/, "")}}
  #         return value.as(::{{typ.id.gsub(/\+$/, "")}})
  #       {% end %}
  #       {% if V <= JSON::Any::Type %}
  #       when ::Int
  #         return value.to_i64
  #       when ::Float
  #         return value.to_f64
  #       when ::Symbol
  #         return value.to_s
  #       {% end %}
  #       end
  #     {% else %}
  #       return value.as(L) if L <= V
  #     {% end %}

  #     raise TypeError.new("cannot cast value of type #{value.class} to type #{V}")
  #   end
  # end
end
