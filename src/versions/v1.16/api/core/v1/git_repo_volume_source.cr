# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  #
  # DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  @[::K8S::Properties(
    directory: {type: String, nilable: true, key: "directory", getter: false, setter: false},
    repository: {type: String, nilable: false, key: "repository", getter: false, setter: false},
    revision: {type: String, nilable: true, key: "revision", getter: false, setter: false},
  )]
  class Api::Core::V1::GitRepoVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    @[::JSON::Field(key: "directory", emit_null: false)]
    @[::YAML::Field(key: "directory", emit_null: false)]
    property directory : String | Nil

    # Repository URL
    @[::JSON::Field(key: "repository", emit_null: true)]
    @[::YAML::Field(key: "repository", emit_null: true)]
    property repository : String

    # Commit hash for the specified revision.
    @[::JSON::Field(key: "revision", emit_null: false)]
    @[::YAML::Field(key: "revision", emit_null: false)]
    property revision : String | Nil

    def initialize(*, @repository : String, @directory : String | Nil = nil, @revision : String | Nil = nil)
    end
  end
end
