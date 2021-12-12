require "json"

class Swagger::Definition::Property
  include JSON::Serializable

  property description : String? = nil
  property type : String? = nil
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
  property items : Property? = nil
  @[JSON::Field(key: "additionalProperties")]
  property additional_properties : AdditionalProperties? = nil

  def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil)
  end

  class AdditionalProperties < Swagger::Definition::Property
    def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil)
      super(type: type, description: description, items: items, _ref: _ref)
    end
  end
end
