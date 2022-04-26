# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rollback_config"

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta1", "DeploymentRollback",
  namespace: "::K8S::Api::Apps::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Required: This must match the Name of a deployment."},
    {name: "rollback_to", kind: ::K8S::Api::Apps::V1beta1::RollbackConfig, key: "rollbackTo", nilable: false, read_only: false, description: "The config of this deployment rollback."},
    {name: "updated_annotations", kind: ::Hash(String, String), key: "updatedAnnotations", nilable: true, read_only: false, description: "The annotations to be updated to a deployment"},

  ],
  description: "DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.",
  versions: [{group: "apps", kind: "DeploymentRollback", version: "v1beta1"}],
)
