# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceAccountTokenProjection",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "audience", kind: String, key: "audience", nilable: true, read_only: false, description: "Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."},
    {name: "expiration_seconds", kind: Int32, key: "expirationSeconds", nilable: true, read_only: false, description: "ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."},
    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "Path is the path relative to the mount point of the file to project the token into."},

  ]
)
