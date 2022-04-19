module K8S::Internals
  module Types::GenericObject
    alias Key = String
    alias ValueType = Nil | Number::Primitive | Bool | Symbol | String | Time
    alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::K8S::Internals::HashObject(Value)
  end

  class GenericObject < Types::GenericObject::Instance
    alias Key = Types::GenericObject::Key
    alias Value = Types::GenericObject::Value

    def self.deep_cast_value(value : Hash(Symbol, L)) forall L
      self.deep_cast_value(value.transform_keys(&.to_s))
    end
  end
end
