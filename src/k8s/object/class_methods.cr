require "json"

module K8S::Object::ClassMethods(V)
  # Deep casts *value* to the `V` type.
  def deep_cast_value(value : M) forall M
    Log.trace { "deep_cast_value: #{value.inspect}" }
    # self.__deep_cast_value(value)
    {% begin %}
    case value
    {% for typ in V.resolve.union_types %}
    when {{typ.id.gsub(/\+$/, "")}}
      value.as({{typ.id.gsub(/\+$/, "")}})
    {% end %}
    when Hash
      __deep_cast_value(value.transform_keys &.to_s)
    else
      __deep_cast_value(value)
    end
    {% end %}
  end

  # :nodoc:
  def __deep_cast_value(value : Hash(J, L)) forall J, L
    Log.trace { "__deep_cast_value (Hash(#{J}, #{L})): #{value.inspect}" }
    {% if L.union? %}
      return value.transform_values { |v| deep_cast_value(v) }
    {% elsif L <= NamedTuple %}
      return value.transform_values { |v| deep_cast_value(v) }
    {% elsif L >= V %}
      #   Log.trace { "found recursive Hash type: Hash({{J.id}}, {{L.id}})" }
      #   return deep_cast_value(value.transform_values { |v| deep_cast_value(v) })
    {% end %}

    {% begin %}
      {% _matches = V.resolve.union_types.select { |typ|
           if typ <= Hash
             ktyp = typ.type_vars.first
             vtyp = typ.type_vars.last
             if ktyp >= J && vtyp >= L && ktyp == J
               true
             else
               false
             end
           else
             false
           end
         } %}
      {% if _matches.empty? %}
        raise TypeError.new("cannot cast value of type Hash({{J.id}}, {{L.id}}) to one of types: {{V.id}}")
      {% elsif _matches.size == 1 %}
        # value.as({{_matches.first.id}})
        value.transform_values &.as({{_matches.first.type_vars.last.id}})
      {% else %}
        case value
        {% for typ in _matches %}
        when {{typ.id}}
          value.transform_values &.as({{typ.type_vars.last.id}})
          # value.as({{typ.id}})
        {% end %}
        else
          raise TypeError.new("failed to cast value of type Hash({{J.id}}, {{L.id}}) to one of types: {{_matches}}")
        end
      {% end %}
    {% end %}
  end

  # :nodoc:
  def __deep_cast_value(value : Set(J)) forall J
    Log.trace { "__deep_cast_value (Set(#{J})): #{value.inspect}" }
    {% if J <= V || J <= Set %}
      Log.trace { "found recursive Set type: #{J}" }
      return value.map { |v| deep_cast_value(v) }
    {% end %}

    {% for typ in V.resolve.union_types %}
      {% if typ <= Set %}
        {% if typ.type_vars.find { |t| t <= J } %}
          return value.as(::Set({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
        {% end %}
      {% end %}
    {% end %}

    {% for typ in V.resolve.union_types %}{% if typ <= Set %}
      {% if typ.type_vars.first >= J %}
        return value.map { |v| v.as({{typ.type_vars.first.id}}) }
      {% end %}
    {% end %}{% end %}

    raise TypeError.new("cannot cast Set values of type #{J} to type #{V}")
  end

  def __deep_cast_value(value : Array(Tuple))
    Log.trace { "__deep_cast_value (Array(Tuple)): #{value.inspect}" }
    value.map { |v| deep_cast_value(v.to_a) }
  end

  # :nodoc:
  def __deep_cast_value(value : Array(J)) forall J
    Log.trace { "__deep_cast_value (Array(#{J})): #{value.inspect}" }

    {% if J <= V || J <= Array %}
      Log.trace { "found recursive Array type: #{J}" }
      return value.map { |v| deep_cast_value(v) }
    {% end %}

    {% for typ in V.resolve.union_types %}{% if typ <= Array %}
      {% if typ.type_vars.find { |t| t <= J } %}
        return value.as(::Array({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
      {% end %}
    {% end %}{% end %}

    {% for typ in V.resolve.union_types %}{% if typ <= Array %}
      {% if typ.type_vars.first >= J %}
        return value.map &.as({{typ.type_vars.first.id}})
      {% end %}
    {% end %}{% end %}

    raise TypeError.new("cannot cast Array values of type #{J} to type #{V}")
  end

  # :nodoc:
  def __deep_cast_value(value : L) forall L
    Log.trace { "__deep_cast_value (#{L}): #{value.inspect}" }

    case value
    when K8S::Object
      self.deep_cast_value(value.to_h)
    when Tuple
      self.deep_cast_value(value.to_a)
    when NamedTuple
      self.deep_cast_value(value.to_h.transform_keys &.to_s)
    else
      {% if V.resolve.union? %}
        case value
        {% for typ in V.resolve.union_types %}
        when ::{{typ.id.gsub(/\+$/, "")}}
          return value.as(::{{typ.id.gsub(/\+$/, "")}})
        {% end %}
        {% if V <= JSON::Any::Type %}
        when ::Int
          return value.to_i64
        when ::Float
          return value.to_f64
        when ::Symbol
          return value.to_s
        {% end %}
        end
      {% else %}
        return value.as(L) if L <= V
      {% end %}

      raise TypeError.new("cannot cast value of type #{value.class} to type #{V}")
    end
  end
end
