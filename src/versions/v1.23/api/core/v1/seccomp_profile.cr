# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("SeccompProfile",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "localhost_profile", kind: String, key: "localhostProfile", nilable: true, read_only: false, description: "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\"."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type indicates which kind of seccomp profile will be applied. Valid options are:\n\nLocalhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.\n\nPossible enum values:\n - `\"Localhost\"` indicates a profile defined in a file on the node should be used. The file's location relative to [<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.)\n - `\"RuntimeDefault\"` represents the default container runtime seccomp profile.\n - `\"Unconfined\"` indicates no seccomp profile is applied (A.K.A. unconfined)."},

  ]
)
