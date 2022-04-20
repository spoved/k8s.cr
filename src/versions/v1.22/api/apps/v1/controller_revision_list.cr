# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./controller_revision"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "ControllerRevisionList",
  namespace: "::K8S::Api::Apps::V1",
  list: true,
  list_kind: K8S::Api::Apps::V1::ControllerRevision,
  description: "ControllerRevisionList is a resource containing a list of ControllerRevision objects.",
)
