# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodFailurePolicyOnExitCodesRequirement",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "container_name", kind: String, key: "containerName", nilable: true, read_only: false, description: "Restricts the check for exit codes to the container with the specified name. When null, the rule applies to all containers. When specified, it should match one the container or initContainer names in the pod template."},
    {name: "operator", kind: String, key: "operator", nilable: false, read_only: false, description: "Represents the relationship between the container exit code(s) and the specified values. Containers completed with success (exit code 0) are excluded from the requirement check. Possible values are:\n\n- In: the requirement is satisfied if at least one container exit code\n  (might be multiple if there are multiple containers not restricted\n  by the 'containerName' field) is in the set of specified values.\n- NotIn: the requirement is satisfied if at least one container exit code\n  (might be multiple if there are multiple containers not restricted\n  by the 'containerName' field) is not in the set of specified values.\nAdditional values are considered to be added in the future. Clients should react to an unknown operator by assuming the requirement is not satisfied."},
    {name: "values", kind: ::Set(Int32), key: "values", nilable: false, read_only: false, description: "Specifies the set of values. Each returned container exit code (might be multiple in case of multiple containers) is checked against this set of values with respect to the operator. The list of values must be ordered and must not contain duplicates. Value '0' cannot be used for the In operator. At least one element is required. At most 255 elements are allowed."},

  ]
)
