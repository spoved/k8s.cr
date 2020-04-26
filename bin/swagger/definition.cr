require "json"
require "./ext/*"

class Swagger::Definition
  @required = [] of String
  @properties = {} of String => Property

  JSON.mapping({
    description:                     String?,
    required:                        {type: Array(String), default: [] of String},
    properties:                      {type: Hash(String, Property), default: {} of String => Property},
    _ref:                            {type: String, nilable: true, key: "$ref"},
    x_kubernetes_group_version_kind: {
      type: Array(XKubernetesGroupVersionKind)?,
      key:  "x-kubernetes-group-version-kind",
    },
  })

  def initialize; end
end

require "./definition/*"
