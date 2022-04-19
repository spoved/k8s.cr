# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AllowedHostPath",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "path_prefix", kind: String, key: "pathPrefix", nilable: true, read_only: false, description: "pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.\n\nExamples: [`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`](`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly."},

  ]
)
