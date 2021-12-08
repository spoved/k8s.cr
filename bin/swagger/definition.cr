require "json"
require "./ext/*"

class Swagger::Definition
  include JSON::Serializable

  property description : String? = nil
  property required : Array(String) = [] of String
  property properties : Hash(String, Property) = {} of String => Property
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
  @[JSON::Field(key: "x-kubernetes-group-version-kind")]
  property x_kubernetes_group_version_kind : Array(XKubernetesGroupVersionKind)? = nil

  def initialize; end
end

require "./definition/*"
