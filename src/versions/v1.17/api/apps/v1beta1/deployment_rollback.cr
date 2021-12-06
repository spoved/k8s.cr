# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
  @[::K8S::GroupVersionKind(group: "apps", kind: "DeploymentRollback", version: "v1beta1", full: "io.k8s.api.apps.v1beta1.DeploymentRollback")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    rollback_to: {type: Api::Apps::V1beta1::RollbackConfig, nilable: false, key: "rollbackTo", getter: false, setter: false},
    updated_annotations: {type: Hash(String, String), nilable: true, key: "updatedAnnotations", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/rollback", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  class Api::Apps::V1beta1::DeploymentRollback
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # Required: This must match the Name of a deployment.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # The config of this deployment rollback.
    @[::JSON::Field(key: "rollbackTo", emit_null: true)]
    @[::YAML::Field(key: "rollbackTo", emit_null: true)]
    property rollback_to : Api::Apps::V1beta1::RollbackConfig

    # The annotations to be updated to a deployment
    @[::JSON::Field(key: "updatedAnnotations", emit_null: false)]
    @[::YAML::Field(key: "updatedAnnotations", emit_null: false)]
    property updated_annotations : Hash(String, String) | Nil

    def initialize(*, @name : String, @rollback_to : Api::Apps::V1beta1::RollbackConfig, @api_version : String | Nil = nil, @kind : String | Nil = nil, @updated_annotations : Hash(String, String) | Nil = nil)
    end
  end
end
