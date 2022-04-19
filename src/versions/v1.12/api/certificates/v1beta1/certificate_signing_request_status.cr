# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./certificate_signing_request_condition"

::K8S::Kubernetes::Resource.define_object("CertificateSigningRequestStatus",
  namespace: "::K8S::Api::Certificates::V1beta1",
  properties: [

    {name: "certificate", kind: String, key: "certificate", nilable: true, read_only: false, description: "If request was approved, the controller will place the issued certificate here."},
    {name: "conditions", kind: ::Array(::K8S::Api::Certificates::V1beta1::CertificateSigningRequestCondition), key: "conditions", nilable: true, read_only: false, description: "Conditions applied to the request, such as approval or denial."},

  ]
)
