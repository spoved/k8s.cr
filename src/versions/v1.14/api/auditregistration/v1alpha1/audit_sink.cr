# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./audit_sink_spec"

::K8S::Kubernetes::Resource.define_resource("auditregistration.k8s.io", "v1alpha1", "AuditSink",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Auditregistration::V1alpha1::AuditSinkSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the audit configuration spec"},

  ],
  description: "AuditSink represents a cluster level audit sink",
)
