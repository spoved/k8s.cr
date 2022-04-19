# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./audit_sink"

::K8S::Kubernetes::Resource.define_resource("auditregistration.k8s.io", "v1alpha1", "AuditSinkList",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  list: true,
  list_kind: K8S::Api::Auditregistration::V1alpha1::AuditSink,
  description: "AuditSinkList is a list of AuditSink items.",
)
