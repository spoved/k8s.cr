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
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. Must be set to work with HPA. If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.
    @[::JSON::Field(key: "labelSelectorPath", emit_null: false)]
    @[::YAML::Field(key: "labelSelectorPath", emit_null: false)]
    property label_selector_path : String | Nil

    # SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.
    @[::JSON::Field(key: "specReplicasPath", emit_null: true)]
    @[::YAML::Field(key: "specReplicasPath", emit_null: true)]
    property spec_replicas_path : String

    # StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.
    @[::JSON::Field(key: "statusReplicasPath", emit_null: true)]
    @[::YAML::Field(key: "statusReplicasPath", emit_null: true)]
    property status_replicas_path : String

    def initialize(*, @spec_replicas_path : String, @status_replicas_path : String, @label_selector_path : String | Nil = nil)
    end
  end
end
