# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./service_account"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ServiceAccountList",
  namespace: "::K8S::Api::Core::V1",
  list: true,
  list_kind: K8S::Api::Core::V1::ServiceAccount,
  description: "ServiceAccountList is a list of ServiceAccount objects",
)
