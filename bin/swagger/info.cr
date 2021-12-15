require "json"

class Swagger::Info
  include JSON::Serializable

  property title : String
  property version : String

  def initialize(@title, @version)
  end
end
