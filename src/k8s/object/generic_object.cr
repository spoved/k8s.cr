module K8S
  module Types::GenericObject
    alias Key = String
    alias ValueType = Nil | Number::Primitive | Bool | Symbol | String | Time | ::JSON::Any
    alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value) | ::K8S::Object(ValueType)
    alias Instance = ::K8S::Object(Value)
  end

  class GenericObject < Types::GenericObject::Instance
    alias Key = Types::GenericObject::Key
    alias Value = Types::GenericObject::Value

    def self.deep_cast_value(value : Hash(Symbol, L)) forall L
      self.deep_cast_value(value.transform_keys(&.to_s))
    end

    def self.deep_cast_value(value)
      case value
      when Array(V)         then value
      when Array            then value.map { |v| deep_cast_value(v).as(V) }
      when Set(V)           then value
      when Set              then value.map { |v| deep_cast_value(v).as(V) }.to_set
      when Tuple            then deep_cast_value(value.to_a)
      when NamedTuple       then deep_cast_value(value.to_h)
      when ::K8S::Object(V) then value.to_h
      when ::K8S::Object    then deep_cast_value(value.to_h)
      when JSON::Any        then deep_cast_value(value.raw)
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
  end
end
