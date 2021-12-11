# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleStatus represents the current status of a scale subresource.
  @[::K8S::Properties(
    replicas: {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
    selector: {type: Hash(String, String), nilable: true, key: "selector", getter: false, setter: false},
    target_selector: {type: String, nilable: true, key: "targetSelector", getter: false, setter: false},
  )]
  class Api::Apps::V1beta1::ScaleStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # actual number of observed instances of the scaled object.
    @[::JSON::Field(key: "replicas", emit_null: true)]
    @[::YAML::Field(key: "replicas", emit_null: true)]
    property replicas : Int32

    # label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Hash(String, String) | Nil

    # label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "targetSelector", emit_null: false)]
    @[::YAML::Field(key: "targetSelector", emit_null: false)]
    property target_selector : String | Nil

    def initialize(*, @replicas : Int32, @selector : Hash(String, String) | Nil = nil, @target_selector : String | Nil = nil)
    end
  end
end