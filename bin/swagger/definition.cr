require "json"
require "./ext/*"
require "./k8s_annos"

class Swagger::Definition
  include JSON::Serializable

  property description : String? = nil
  property required : Array(String) = [] of String
  property properties : Hash(String, Swagger::Definition::Property) = Hash(String, Swagger::Definition::Property).new
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
  @[JSON::Field(key: "x-kubernetes-group-version-kind")]
  property x_kubernetes_group_version_kind : Array(XKubernetesGroupVersionKind)? = nil

  def initialize(@description = nil, @required = Array(String).new,
                 @properties = Hash(String, Property).new,
                 @_ref = nil, @x_kubernetes_group_version_kind = nil)
  end
end

require "./definition/*"
