require "json"

module K8S::Object::ClassMethods(V)
  # Deep casts *value* to the `V` type.
  def deep_cast_value(value)
    Log.trace { "deep_cast_value: #{value.inspect}" }
    self.__deep_cast_value(value)
  end

  # :nodoc:
  def __deep_cast_value(value : Hash(J, L)) forall J, L
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
        raise TypeError.new("Cannot set value of type Hash({{J.id}}, {{L.id}}) to one of types: {{V.id}}")
      {% elsif _matches.size == 1 %}
        value.as({{_matches.first.id}})
      {% else %}
        case value
        {% for typ in _matches %}
        when {{typ.id}}
          value.as({{typ.id}})
        {% end %}
        else
          raise TypeError.new("Failed to cast value of type Hash({{J.id}}, {{L.id}}) to one of types: {{_matches}}")
        end
      {% end %}
    {% end %}
  end

  # :nodoc:
  def __deep_cast_value(value : Set(J)) forall J
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
  def __deep_cast_value(value : Array(J)) forall J
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
  def __deep_cast_value(value : L) forall L
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

  # :nodoc:
  protected def internal_deep_merge!(hash, *values, **options, &block)
    values += {options}
    values.each do |other_hash|
      other_hash.try &.each do |other_key, other_value|
        other_value = yield(other_key, other_value) || other_value
        other_value = deep_cast_value(other_value)

        original_value = hash[other_key]?
        if original_value.is_a?(Hash) && other_value.is_a?(Hash)
          other_value = deep_merge!(original_value.dup, other_value)
        end
        hash[other_key] = other_value
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

macro finished
  class ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
    def self.__deep_cast_value(value : K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType)
      case value
      {% for typ in K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType.union_types %}
        {% if typ.id =~ /^K8S::Object/ %}
        when K8S::Object
          value.as(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        {% elsif typ.id =~ /JSON::Any/ %}
        when {{typ.id.gsub(/JSON::Any/, "::JSON::Any")}}
          value.as({{typ.id.gsub(/JSON::Any/, "::JSON::Any")}})
        {% else %}
        when {{typ.id}}
          value.as({{typ.id}})
        {% end %}
      {% end %}
      when Array(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        value.map &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType))
      when Hash(String, K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        value.transform_values &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType))
      else
        raise TypeError.new("Cannot set value of type #{value.class} to type JSONSchemaProps::ValueType")
      end
    end
  end
end
