# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
  @[::K8S::Properties(
    label_selector_path: {type: String, nilable: true, key: "labelSelectorPath", getter: false, setter: false},
    spec_replicas_path: {type: String, nilable: false, key: "specReplicasPath", getter: false, setter: false},
    status_replicas_path: {type: String, nilable: false, key: "statusReplicasPath", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale
    include ::JSON::Serializable
    include ::YAML::Serializable

    # labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.)
    @[::JSON::Field(key: "labelSelectorPath", emit_null: false)]
    @[::YAML::Field(key: "labelSelectorPath", emit_null: false)]
    property label_selector_path : String | Nil

    # specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the [`/scale` subresource will return an error on GET.](`/scale` subresource will return an error on GET.)
    @[::JSON::Field(key: "specReplicasPath", emit_null: true)]
    @[::YAML::Field(key: "specReplicasPath", emit_null: true)]
    property spec_replicas_path : String

    # statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the [`/scale` subresource will default to 0.](`/scale` subresource will default to 0.)
    @[::JSON::Field(key: "statusReplicasPath", emit_null: true)]
    @[::YAML::Field(key: "statusReplicasPath", emit_null: true)]
    property status_replicas_path : String

    def initialize(*, @spec_replicas_path : String, @status_replicas_path : String, @label_selector_path : String | Nil = nil)
    end
  end
end
