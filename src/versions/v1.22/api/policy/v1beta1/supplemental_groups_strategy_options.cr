# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./id_range"

::K8S::Kubernetes::Resource.define_object("SupplementalGroupsStrategyOptions",
  namespace: "::K8S::Api::Policy::V1beta1",
  properties: [

    {name: "ranges", kind: ::Array(::K8S::Api::Policy::V1beta1::IDRange), key: "ranges", nilable: true, read_only: false, description: "ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs."},
    {name: "rule", kind: String, key: "rule", nilable: true, read_only: false, description: "rule is the strategy that will dictate what supplemental groups is used in the SecurityContext."},

  ]
)
