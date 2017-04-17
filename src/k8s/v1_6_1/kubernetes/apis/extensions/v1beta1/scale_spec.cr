# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# describes the attributes of a scale subresource
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ScaleSpec
  # desired number of instances for the scaled object.
  property replicas : Int32?

  YAML.mapping({replicas: {type: Int32, nilable: true, key: replicas, getter: false, setter: false}}, true)

  JSON.mapping({replicas: {type: Int32, nilable: true, key: replicas, getter: false, setter: false}}, true)

  def initialize(@replicas = nil)
  end
end
