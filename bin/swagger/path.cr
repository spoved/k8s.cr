require "json"

class Swagger::Path
  include JSON::Serializable

  property get : Action?
  property post : Action?
  property delete : Action?
  property patch : Action?
  property put : Action?
  property head : Action?
  property options : Action?
  property parameters : Array(Parameter) = [] of Parameter

  def actions
    action_map.values.reject(Nil).map(&.as Action)
  end

  def action_map
    {
      options: options,
      head:    head,
      post:    post,
      get:     get,
      put:     put,
      path:    patch,
      delete:  delete,
    }
  end
end

require "./path/*"
