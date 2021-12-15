require "json"

class Swagger
  include JSON::Serializable
  property info : Info
  property paths : Hash(String, Path)
  property definitions : Hash(String, Definition)

  def initialize(@info = Info.new("", ""), @paths = Hash(String, Path).new, @definitions = Hash(String, Definition).new); end
end

require "./swagger/*"
