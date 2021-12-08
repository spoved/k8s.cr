require "json"

class Swagger::Path::Schema
  include JSON::Serializable

  property type : String?
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
end
