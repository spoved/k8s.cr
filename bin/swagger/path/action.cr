require "json"
require "./parameter"
require "../ext/*"

class Swagger::Path::Action
  include JSON::Serializable

  property description : String?
  property consumes : Array(String)?
  property produces : Array(String)?
  property operationId : String
  property responses : Hash(String, Response)
  property parameters : Array(Parameter) = [] of Parameter
  property tags : Array(String)?

  @[JSON::Field(key: "x-kubernetes-action")]
  property x_kubernetes_action : Array(String) | String? = nil

  def initialize(@operationId, @responses,
                 @description = nil, @consumes = nil, @produces = nil,
                 @parameters = nil, @tags = nil, @x_kubernetes_action = nil)
  end
end

require "./action/*"
