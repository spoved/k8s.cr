# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleStatus represents the current status of a scale subresource.
  @[::K8S::Properties(
    replicas: {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
    selector: {type: String, nilable: true, key: "selector", getter: false, setter: false},
  )]
  class Api::Autoscaling::V1::ScaleStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # actual number of observed instances of the scaled object.
    property replicas : Int32

    # label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    property selector : String | Nil

    def initialize(*, @replicas : Int32, @selector : String | Nil = nil)
    end
  end
end
