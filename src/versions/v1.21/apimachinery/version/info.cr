# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Info contains versioning information. how we'll want to distribute that information.
  @[::K8S::Properties(
    build_date: {type: String, nilable: false, key: "buildDate", getter: false, setter: false},
    compiler: {type: String, nilable: false, key: "compiler", getter: false, setter: false},
    git_commit: {type: String, nilable: false, key: "gitCommit", getter: false, setter: false},
    git_tree_state: {type: String, nilable: false, key: "gitTreeState", getter: false, setter: false},
    git_version: {type: String, nilable: false, key: "gitVersion", getter: false, setter: false},
    go_version: {type: String, nilable: false, key: "goVersion", getter: false, setter: false},
    major: {type: String, nilable: false, key: "major", getter: false, setter: false},
    minor: {type: String, nilable: false, key: "minor", getter: false, setter: false},
    platform: {type: String, nilable: false, key: "platform", getter: false, setter: false},
  )]
  class Apimachinery::Version::Info
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "buildDate")]
    @[::YAML::Field(key: "buildDate")]
    property build_date : String

    property compiler : String

    @[::JSON::Field(key: "gitCommit")]
    @[::YAML::Field(key: "gitCommit")]
    property git_commit : String

    @[::JSON::Field(key: "gitTreeState")]
    @[::YAML::Field(key: "gitTreeState")]
    property git_tree_state : String

    @[::JSON::Field(key: "gitVersion")]
    @[::YAML::Field(key: "gitVersion")]
    property git_version : String

    @[::JSON::Field(key: "goVersion")]
    @[::YAML::Field(key: "goVersion")]
    property go_version : String

    property major : String

    property minor : String

    property platform : String

    def initialize(*, @build_date : String, @compiler : String, @git_commit : String, @git_tree_state : String, @git_version : String, @go_version : String, @major : String, @minor : String, @platform : String)
    end
  end
end
