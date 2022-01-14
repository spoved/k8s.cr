require "any_hash"

abstract class AnyHash(K, V)
  class TypeError < Exception; end

  # Deep casts *value* to the `V` type.
  def self.deep_cast_value(value)
    Log.trace { "deep_cast_value: #{value.inspect}" }
    self.__deep_cast_value(value)
  end

  # :nodoc:
  def self.__deep_cast_value(value : Hash(J, L)) forall J, L
    {% begin %}
      {% _matches = V.union_types.select { |typ|
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
        raise TypeError.new("Cannot set value of type ({{J.id}}, {{L.id}}) to type (#{K}, #{V})")
      {% elsif _matches.size == 1 %}
        value.as({{_matches.first.id}})
      {% else %}
        case value
        {% for typ in _matches %}
        when {{typ.id}}
          value.as({{typ.id}})
        {% end %}
        else
          raise TypeError.new("Cannot set value of type ({{J.id}}, {{L.id}}) to type (#{K}, #{V})")
        end
      {% end %}
    {% end %}
  end

  # :nodoc:
  def self.__deep_cast_value(value : Set(J)) forall J
    {% for typ in V.union_types %}
      {% if typ <= Set %}
        {% if typ.type_vars.find { |t| t <= J } %}
          return value.as(::Set({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
        {% end %}
      {% end %}
    {% end %}

    raise TypeError.new("Cannot set value of type {{J.id}} to type #{V}")
  end

  # :nodoc:
  def self.__deep_cast_value(value : Array(J)) forall J
    {% for typ in V.union_types %}
      {% if typ <= Array %}
        {% if typ.type_vars.find { |t| t <= J } %}
          return value.as(::Array({{typ.type_vars.map { |t| "::#{t.id}" }.join(" | ").id}}))
        {% end %}
      {% end %}
    {% end %}

    raise TypeError.new("Cannot set value of type {{J.id}} to type #{V}")
  end

  # :nodoc:
  def self.__deep_cast_value(value : L) forall L
    case value
    when Tuple
      self.__deep_cast_value(value.to_a)
    when NamedTuple
      self.__deep_cast_value(value.to_h)
    else
      return value.as(L) if L <= V
      raise TypeError.new("Cannot set value of type {{L.id}} to type #{V}")
    end
  end
end
