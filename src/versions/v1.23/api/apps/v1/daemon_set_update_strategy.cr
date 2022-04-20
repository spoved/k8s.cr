# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rolling_update_daemon_set"

::K8S::Kubernetes::Resource.define_object("DaemonSetUpdateStrategy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "rolling_update", kind: ::K8S::Api::Apps::V1::RollingUpdateDaemonSet, key: "rollingUpdate", nilable: true, read_only: false, description: "Rolling update config params. Present only if type = \"RollingUpdate\"."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` Replace the old daemons only when it's killed\n - `\"RollingUpdate\"` Replace the old daemons by new ones using rolling update i.e replace them on each node one after the other."},

  ]
)
