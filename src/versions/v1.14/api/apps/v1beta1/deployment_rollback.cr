# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::DeploymentRollback; end

require "./rollback_config"

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::DeploymentRollback`.
  module Types::Api::Apps::V1beta1::DeploymentRollback
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Required: This must match the Name of a deployment.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # The config of this deployment rollback.
    abstract def rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig?
    # :ditto:
    abstract def rollback_to! : ::K8S::Api::Apps::V1beta1::RollbackConfig
    # :ditto:
    abstract def rollback_to? : ::K8S::Api::Apps::V1beta1::RollbackConfig?
    # :ditto:
    abstract def rollback_to=(value : ::K8S::Api::Apps::V1beta1::RollbackConfig)
    # The annotations to be updated to a deployment
    abstract def updated_annotations : ::Hash(String, String)?
    # :ditto:
    abstract def updated_annotations! : ::Hash(String, String)
    # :ditto:
    abstract def updated_annotations? : ::Hash(String, String)?
    # :ditto:
    abstract def updated_annotations=(value : ::Hash(String, String))
  end

  # DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeploymentRollback", version: "v1beta1", full: "io.k8s.api.apps.v1beta1.DeploymentRollback")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Required: This must match the Name of a deployment.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rollback_to: {key: "rollbackTo", accessor: "rollback_to", kind: "::K8S::Api::Apps::V1beta1::RollbackConfig", nilable: false, default: nil, read_only: false, description: "The config of this deployment rollback.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    updated_annotations: {key: "updatedAnnotations", accessor: "updated_annotations", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "The annotations to be updated to a deployment", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::DeploymentRollback < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1beta1::DeploymentRollback
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)")
    k8s_object_accessor("kind", kind : String, true, false, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)")
    k8s_object_accessor("name", name : String, false, false, "Required: This must match the Name of a deployment.")
    k8s_object_accessor("rollbackTo", rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig, false, false, "The config of this deployment rollback.")
    k8s_object_accessor("updatedAnnotations", updated_annotations : ::Hash(String, String), true, false, "The annotations to be updated to a deployment")

    def initialize(*, api_version : String? = nil, kind : String? = nil, name : String? = nil, rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig? = nil, updated_annotations : ::Hash(String, String)? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["kind"] = kind
      self.["name"] = name
      self.["rollbackTo"] = rollback_to
      self.["updatedAnnotations"] = updated_annotations
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "rollbackTo", accessor: "rollback_to", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1beta1::RollbackConfig},
      {key: "updatedAnnotations", accessor: "updated_annotations", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
    ])
  end
end
