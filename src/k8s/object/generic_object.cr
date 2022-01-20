module K8S
  module Types::GenericObject
    alias ValueType = Nil | Number::Primitive | Bool | Symbol | String | Time | ::JSON::Any::Type | ::JSON::Any
    alias Value = ValueType | Array(Value) | Set(Value) | Hash(String, Value) | ::K8S::Object(ValueType)
    alias Instance = ::K8S::Object(Value)
  end

  class GenericObject < Types::GenericObject::Instance; end
end
