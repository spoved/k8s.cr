require "json"
require "./schema"

class Swagger::Path::Parameter
  include JSON::Serializable

  property name : String?
  property in : String?
  property description : String?
  property uniqueItems : Bool?
  property required : Bool = false
  property type : String?
  property schema : Schema?

  def initialize(@name : String, @type = "string", @required = true)
  end
end
