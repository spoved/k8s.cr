# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("GitRepoVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "directory", kind: String, key: "directory", nilable: true, read_only: false, description: "Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."},
    {name: "repository", kind: String, key: "repository", nilable: false, read_only: false, description: "Repository URL"},
    {name: "revision", kind: String, key: "revision", nilable: true, read_only: false, description: "Commit hash for the specified revision."},

  ]
)
