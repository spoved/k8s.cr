require "json"
require "json_mapping"

class Swagger
  JSON.mapping({
    info:        Info,
    paths:       Hash(String, Path),
    definitions: Hash(String, Definition),
  })
end

require "./swagger/*"
