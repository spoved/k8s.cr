# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    # LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status or .spec. Must be set to work with HPA. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [[https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.)](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.))
    abstract def label_selector_path : String?
    # :ditto:
    abstract def label_selector_path! : String
    # :ditto:
    abstract def label_selector_path? : String?
    # :ditto:
    abstract def label_selector_path=(value : String)
    # SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.
    abstract def spec_replicas_path : String?
    # :ditto:
    abstract def spec_replicas_path! : String
    # :ditto:
    abstract def spec_replicas_path? : String?
    # :ditto:
    abstract def spec_replicas_path=(value : String)
    # StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.
    abstract def status_replicas_path : String?
    # :ditto:
    abstract def status_replicas_path! : String
    # :ditto:
    abstract def status_replicas_path? : String?
    # :ditto:
    abstract def status_replicas_path=(value : String)
  end

  # CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
  @[::K8S::Properties(
    label_selector_path: {key: "labelSelectorPath", accessor: "label_selector_path", kind: "String", nilable: true, default: nil, read_only: false, description: "LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status or .spec. Must be set to work with HPA. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec_replicas_path: {key: "specReplicasPath", accessor: "spec_replicas_path", kind: "String", nilable: false, default: nil, read_only: false, description: "SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status_replicas_path: {key: "statusReplicasPath", accessor: "status_replicas_path", kind: "String", nilable: false, default: nil, read_only: false, description: "StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    k8s_object_accessor("labelSelectorPath", label_selector_path : String, true, false, "LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status or .spec. Must be set to work with HPA. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.)")
    k8s_object_accessor("specReplicasPath", spec_replicas_path : String, false, false, "SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.")
    k8s_object_accessor("statusReplicasPath", status_replicas_path : String, false, false, "StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.")

    def initialize(*, label_selector_path : String? = nil, spec_replicas_path : String? = nil, status_replicas_path : String? = nil)
      super()
      self.["labelSelectorPath"] = label_selector_path
      self.["specReplicasPath"] = spec_replicas_path
      self.["statusReplicasPath"] = status_replicas_path
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "labelSelectorPath", accessor: "label_selector_path", nilable: true, read_only: false, default: nil, kind: String},
      {key: "specReplicasPath", accessor: "spec_replicas_path", nilable: false, read_only: false, default: nil, kind: String},
      {key: "statusReplicasPath", accessor: "status_replicas_path", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
