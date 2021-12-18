require "json"

class XKubernetesGroupVersionKind
  include JSON::Serializable

  property group : String?
  property kind : String?
  property version : String?

  def initialize(@group, @kind, @version); end
end
