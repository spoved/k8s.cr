# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Version::Info; end

module K8S
  # Namespace holding the types for `Apimachinery::Version::Info`.
  module Types::Apimachinery::Version::Info
    #
    abstract def build_date : String?
    # :ditto:
    abstract def build_date! : String
    # :ditto:
    abstract def build_date? : String?
    # :ditto:
    abstract def build_date=(value : String)
    #
    abstract def compiler : String?
    # :ditto:
    abstract def compiler! : String
    # :ditto:
    abstract def compiler? : String?
    # :ditto:
    abstract def compiler=(value : String)
    #
    abstract def git_commit : String?
    # :ditto:
    abstract def git_commit! : String
    # :ditto:
    abstract def git_commit? : String?
    # :ditto:
    abstract def git_commit=(value : String)
    #
    abstract def git_tree_state : String?
    # :ditto:
    abstract def git_tree_state! : String
    # :ditto:
    abstract def git_tree_state? : String?
    # :ditto:
    abstract def git_tree_state=(value : String)
    #
    abstract def git_version : String?
    # :ditto:
    abstract def git_version! : String
    # :ditto:
    abstract def git_version? : String?
    # :ditto:
    abstract def git_version=(value : String)
    #
    abstract def go_version : String?
    # :ditto:
    abstract def go_version! : String
    # :ditto:
    abstract def go_version? : String?
    # :ditto:
    abstract def go_version=(value : String)
    #
    abstract def major : String?
    # :ditto:
    abstract def major! : String
    # :ditto:
    abstract def major? : String?
    # :ditto:
    abstract def major=(value : String)
    #
    abstract def minor : String?
    # :ditto:
    abstract def minor! : String
    # :ditto:
    abstract def minor? : String?
    # :ditto:
    abstract def minor=(value : String)
    #
    abstract def platform : String?
    # :ditto:
    abstract def platform! : String
    # :ditto:
    abstract def platform? : String?
    # :ditto:
    abstract def platform=(value : String)
  end

  # Info contains versioning information. how we'll want to distribute that information.
  @[::K8S::Properties(
    build_date: {key: "buildDate", accessor: "build_date", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    compiler: {key: "compiler", accessor: "compiler", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    git_commit: {key: "gitCommit", accessor: "git_commit", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    git_tree_state: {key: "gitTreeState", accessor: "git_tree_state", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    git_version: {key: "gitVersion", accessor: "git_version", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    go_version: {key: "goVersion", accessor: "go_version", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    major: {key: "major", accessor: "major", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    minor: {key: "minor", accessor: "minor", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    platform: {key: "platform", accessor: "platform", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Version::Info < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Version::Info
    k8s_object_accessor("buildDate", build_date : String, false, false, nil)
    k8s_object_accessor("compiler", compiler : String, false, false, nil)
    k8s_object_accessor("gitCommit", git_commit : String, false, false, nil)
    k8s_object_accessor("gitTreeState", git_tree_state : String, false, false, nil)
    k8s_object_accessor("gitVersion", git_version : String, false, false, nil)
    k8s_object_accessor("goVersion", go_version : String, false, false, nil)
    k8s_object_accessor("major", major : String, false, false, nil)
    k8s_object_accessor("minor", minor : String, false, false, nil)
    k8s_object_accessor("platform", platform : String, false, false, nil)

    def initialize(*, build_date : String? = nil, compiler : String? = nil, git_commit : String? = nil, git_tree_state : String? = nil, git_version : String? = nil, go_version : String? = nil, major : String? = nil, minor : String? = nil, platform : String? = nil)
      super()
      self.["buildDate"] = build_date
      self.["compiler"] = compiler
      self.["gitCommit"] = git_commit
      self.["gitTreeState"] = git_tree_state
      self.["gitVersion"] = git_version
      self.["goVersion"] = go_version
      self.["major"] = major
      self.["minor"] = minor
      self.["platform"] = platform
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "buildDate", accessor: "build_date", nilable: false, read_only: false, default: nil, kind: String},
      {key: "compiler", accessor: "compiler", nilable: false, read_only: false, default: nil, kind: String},
      {key: "gitCommit", accessor: "git_commit", nilable: false, read_only: false, default: nil, kind: String},
      {key: "gitTreeState", accessor: "git_tree_state", nilable: false, read_only: false, default: nil, kind: String},
      {key: "gitVersion", accessor: "git_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "goVersion", accessor: "go_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "major", accessor: "major", nilable: false, read_only: false, default: nil, kind: String},
      {key: "minor", accessor: "minor", nilable: false, read_only: false, default: nil, kind: String},
      {key: "platform", accessor: "platform", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
