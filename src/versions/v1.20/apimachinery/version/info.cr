# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Info",
  namespace: "::K8S::Apimachinery::Version",
  properties: [

    {name: "build_date", kind: String, key: "buildDate", nilable: false, read_only: false, description: nil},
    {name: "compiler", kind: String, key: "compiler", nilable: false, read_only: false, description: nil},
    {name: "git_commit", kind: String, key: "gitCommit", nilable: false, read_only: false, description: nil},
    {name: "git_tree_state", kind: String, key: "gitTreeState", nilable: false, read_only: false, description: nil},
    {name: "git_version", kind: String, key: "gitVersion", nilable: false, read_only: false, description: nil},
    {name: "go_version", kind: String, key: "goVersion", nilable: false, read_only: false, description: nil},
    {name: "major", kind: String, key: "major", nilable: false, read_only: false, description: nil},
    {name: "minor", kind: String, key: "minor", nilable: false, read_only: false, description: nil},
    {name: "platform", kind: String, key: "platform", nilable: false, read_only: false, description: nil},

  ]
)
