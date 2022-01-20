# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Version::Info; end

module K8S
  # Namespace holding the types for `Apimachinery::Version::Info`.
  module Types::Apimachinery::Version::Info
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    #
    abstract def build_date : String
    # :ditto:
    abstract def build_date! : String
    # :ditto:
    abstract def build_date? : String?
    # :ditto:
    abstract def build_date=(value : String)
    #
    abstract def compiler : String
    # :ditto:
    abstract def compiler! : String
    # :ditto:
    abstract def compiler? : String?
    # :ditto:
    abstract def compiler=(value : String)
    #
    abstract def git_commit : String
    # :ditto:
    abstract def git_commit! : String
    # :ditto:
    abstract def git_commit? : String?
    # :ditto:
    abstract def git_commit=(value : String)
    #
    abstract def git_tree_state : String
    # :ditto:
    abstract def git_tree_state! : String
    # :ditto:
    abstract def git_tree_state? : String?
    # :ditto:
    abstract def git_tree_state=(value : String)
    #
    abstract def git_version : String
    # :ditto:
    abstract def git_version! : String
    # :ditto:
    abstract def git_version? : String?
    # :ditto:
    abstract def git_version=(value : String)
    #
    abstract def go_version : String
    # :ditto:
    abstract def go_version! : String
    # :ditto:
    abstract def go_version? : String?
    # :ditto:
    abstract def go_version=(value : String)
    #
    abstract def major : String
    # :ditto:
    abstract def major! : String
    # :ditto:
    abstract def major? : String?
    # :ditto:
    abstract def major=(value : String)
    #
    abstract def minor : String
    # :ditto:
    abstract def minor! : String
    # :ditto:
    abstract def minor? : String?
    # :ditto:
    abstract def minor=(value : String)
    #
    abstract def platform : String
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
  class Apimachinery::Version::Info < ::K8S::Types::Apimachinery::Version::Info::Instance
    include ::K8S::Types::Apimachinery::Version::Info
    include ::K8S::Kubernetes::Object

    #
    def build_date : String
      self.["buildDate"].as(String)
    end

    # :ditto:
    def build_date! : String
      self.["buildDate"].as(String).not_nil!
    end

    # :ditto:
    def build_date? : String?
      self.["buildDate"]?.as(String?)
    end

    # :ditto:
    def build_date=(value : String)
      self.["buildDate"] = value
    end

    #
    def compiler : String
      self.["compiler"].as(String)
    end

    # :ditto:
    def compiler! : String
      self.["compiler"].as(String).not_nil!
    end

    # :ditto:
    def compiler? : String?
      self.["compiler"]?.as(String?)
    end

    # :ditto:
    def compiler=(value : String)
      self.["compiler"] = value
    end

    #
    def git_commit : String
      self.["gitCommit"].as(String)
    end

    # :ditto:
    def git_commit! : String
      self.["gitCommit"].as(String).not_nil!
    end

    # :ditto:
    def git_commit? : String?
      self.["gitCommit"]?.as(String?)
    end

    # :ditto:
    def git_commit=(value : String)
      self.["gitCommit"] = value
    end

    #
    def git_tree_state : String
      self.["gitTreeState"].as(String)
    end

    # :ditto:
    def git_tree_state! : String
      self.["gitTreeState"].as(String).not_nil!
    end

    # :ditto:
    def git_tree_state? : String?
      self.["gitTreeState"]?.as(String?)
    end

    # :ditto:
    def git_tree_state=(value : String)
      self.["gitTreeState"] = value
    end

    #
    def git_version : String
      self.["gitVersion"].as(String)
    end

    # :ditto:
    def git_version! : String
      self.["gitVersion"].as(String).not_nil!
    end

    # :ditto:
    def git_version? : String?
      self.["gitVersion"]?.as(String?)
    end

    # :ditto:
    def git_version=(value : String)
      self.["gitVersion"] = value
    end

    #
    def go_version : String
      self.["goVersion"].as(String)
    end

    # :ditto:
    def go_version! : String
      self.["goVersion"].as(String).not_nil!
    end

    # :ditto:
    def go_version? : String?
      self.["goVersion"]?.as(String?)
    end

    # :ditto:
    def go_version=(value : String)
      self.["goVersion"] = value
    end

    #
    def major : String
      self.["major"].as(String)
    end

    # :ditto:
    def major! : String
      self.["major"].as(String).not_nil!
    end

    # :ditto:
    def major? : String?
      self.["major"]?.as(String?)
    end

    # :ditto:
    def major=(value : String)
      self.["major"] = value
    end

    #
    def minor : String
      self.["minor"].as(String)
    end

    # :ditto:
    def minor! : String
      self.["minor"].as(String).not_nil!
    end

    # :ditto:
    def minor? : String?
      self.["minor"]?.as(String?)
    end

    # :ditto:
    def minor=(value : String)
      self.["minor"] = value
    end

    #
    def platform : String
      self.["platform"].as(String)
    end

    # :ditto:
    def platform! : String
      self.["platform"].as(String).not_nil!
    end

    # :ditto:
    def platform? : String?
      self.["platform"]?.as(String?)
    end

    # :ditto:
    def platform=(value : String)
      self.["platform"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "buildDate", accessor: "build_date", nilable: false, read_only: false, default: nil, kind: String },
        { key: "compiler", accessor: "compiler", nilable: false, read_only: false, default: nil, kind: String },
        { key: "gitCommit", accessor: "git_commit", nilable: false, read_only: false, default: nil, kind: String },
        { key: "gitTreeState", accessor: "git_tree_state", nilable: false, read_only: false, default: nil, kind: String },
        { key: "gitVersion", accessor: "git_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "goVersion", accessor: "go_version", nilable: false, read_only: false, default: nil, kind: String },
        { key: "major", accessor: "major", nilable: false, read_only: false, default: nil, kind: String },
        { key: "minor", accessor: "minor", nilable: false, read_only: false, default: nil, kind: String },
        { key: "platform", accessor: "platform", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
