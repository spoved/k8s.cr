# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::GitRepoVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::GitRepoVolumeSource`.
  module Types::Api::Core::V1::GitRepoVolumeSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    abstract def directory : String?
    # :ditto:
    abstract def directory! : String
    # :ditto:
    abstract def directory? : String?
    # :ditto:
    abstract def directory=(value : String?)
    # Repository URL
    abstract def repository : String
    # :ditto:
    abstract def repository! : String
    # :ditto:
    abstract def repository? : String?
    # :ditto:
    abstract def repository=(value : String)
    # Commit hash for the specified revision.
    abstract def revision : String?
    # :ditto:
    abstract def revision! : String
    # :ditto:
    abstract def revision? : String?
    # :ditto:
    abstract def revision=(value : String?)
  end

  # Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  #
  # DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  @[::K8S::Properties(
    directory: {key: "directory", accessor: "directory", kind: "String", nilable: true, default: nil, read_only: false, description: "Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."},
    repository: {key: "repository", accessor: "repository", kind: "String", nilable: false, default: nil, read_only: false, description: "Repository URL"},
    revision: {key: "revision", accessor: "revision", kind: "String", nilable: true, default: nil, read_only: false, description: "Commit hash for the specified revision."},
  )]
  class Api::Core::V1::GitRepoVolumeSource < ::K8S::Types::Api::Core::V1::GitRepoVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::GitRepoVolumeSource
    include ::K8S::Kubernetes::Object

    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    def directory : String?
      self.["directory"].as(String?)
    end

    # :ditto:
    def directory! : String
      self.["directory"].as(String?).not_nil!
    end

    # :ditto:
    def directory? : String?
      self.["directory"]?.as(String?)
    end

    # :ditto:
    def directory=(value : String?)
      self.["directory"] = value
    end

    # Repository URL
    def repository : String
      self.["repository"].as(String)
    end

    # :ditto:
    def repository! : String
      self.["repository"].as(String).not_nil!
    end

    # :ditto:
    def repository? : String?
      self.["repository"]?.as(String?)
    end

    # :ditto:
    def repository=(value : String)
      self.["repository"] = value
    end

    # Commit hash for the specified revision.
    def revision : String?
      self.["revision"].as(String?)
    end

    # :ditto:
    def revision! : String
      self.["revision"].as(String?).not_nil!
    end

    # :ditto:
    def revision? : String?
      self.["revision"]?.as(String?)
    end

    # :ditto:
    def revision=(value : String?)
      self.["revision"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "directory", accessor: "directory", nilable: true, read_only: false, default: nil, kind: String },
        { key: "repository", accessor: "repository", nilable: false, read_only: false, default: nil, kind: String },
        { key: "revision", accessor: "revision", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
