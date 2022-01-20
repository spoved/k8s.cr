# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::DeploymentRollback; end

require "./rollback_config"

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::DeploymentRollback`.
  module Types::Api::Apps::V1beta1::DeploymentRollback
    alias ValueType = String | ::K8S::Api::Apps::V1beta1::RollbackConfig | ::Hash(String, String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String?)
    # Required: This must match the Name of a deployment.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # The config of this deployment rollback.
    abstract def rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig
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
    abstract def updated_annotations=(value : ::Hash(String, String)?)
  end

  # DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeploymentRollback", version: "v1beta1", full: "io.k8s.api.apps.v1beta1.DeploymentRollback")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Required: This must match the Name of a deployment.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rollback_to: {key: "rollbackTo", accessor: "rollback_to", kind: "::K8S::Api::Apps::V1beta1::RollbackConfig", nilable: false, default: nil, read_only: false, description: "The config of this deployment rollback.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    updated_annotations: {key: "updatedAnnotations", accessor: "updated_annotations", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "The annotations to be updated to a deployment", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::DeploymentRollback < ::K8S::Types::Api::Apps::V1beta1::DeploymentRollback::Instance
    include ::K8S::Types::Api::Apps::V1beta1::DeploymentRollback
    include ::K8S::Kubernetes::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    def kind : String?
      self.["kind"].as(String?)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String?).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String?)
      self.["kind"] = value
    end

    # Required: This must match the Name of a deployment.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # The config of this deployment rollback.
    def rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig
      self.["rollbackTo"].as(::K8S::Api::Apps::V1beta1::RollbackConfig)
    end

    # :ditto:
    def rollback_to! : ::K8S::Api::Apps::V1beta1::RollbackConfig
      self.["rollbackTo"].as(::K8S::Api::Apps::V1beta1::RollbackConfig).not_nil!
    end

    # :ditto:
    def rollback_to? : ::K8S::Api::Apps::V1beta1::RollbackConfig?
      self.["rollbackTo"]?.as(::K8S::Api::Apps::V1beta1::RollbackConfig?)
    end

    # :ditto:
    def rollback_to=(value : ::K8S::Api::Apps::V1beta1::RollbackConfig)
      self.["rollbackTo"] = value
    end

    # The annotations to be updated to a deployment
    def updated_annotations : ::Hash(String, String)?
      self.["updatedAnnotations"].as(::Hash(String, String)?)
    end

    # :ditto:
    def updated_annotations! : ::Hash(String, String)
      self.["updatedAnnotations"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def updated_annotations? : ::Hash(String, String)?
      self.["updatedAnnotations"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def updated_annotations=(value : ::Hash(String, String)?)
      self.["updatedAnnotations"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "rollbackTo", accessor: "rollback_to", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1beta1::RollbackConfig },
        { key: "updatedAnnotations", accessor: "updated_annotations", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
      ])
end
  end
end
