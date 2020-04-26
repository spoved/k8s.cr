require "json"
require "./parameter"
require "../ext/*"

class Swagger::Path::Action
  JSON.mapping({
    description:         String?,
    consumes:            Array(String)?,
    produces:            Array(String)?,
    operationId:         String,
    responses:           Hash(String, Response),
    parameters:          {type: Array(Parameter), default: [] of Parameter},
    tags:                Array(String)?,
    x_kubernetes_action: {
      type: String?,
      key:  "x-kubernetes-action",
    },
  })
end

require "./action/*"
