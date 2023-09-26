# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("MatchCondition",
  namespace: "::K8S::Api::Admissionregistration::V1",
  properties: [

    {name: "expression", kind: String, key: "expression", nilable: false, read_only: false, description: "Expression represents the expression which will be evaluated by CEL. Must evaluate to bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:\n\n'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission [request(/pkg/apis/admission/types.go#AdmissionRequest). 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.](request(/pkg/apis/admission/types.go#AdmissionRequest). 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.)\n  See [https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz](https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz)\n'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the\n  request resource.\nDocumentation on CEL: [https://kubernetes.io/docs/reference/using-api/cel/](https://kubernetes.io/docs/reference/using-api/cel/)\n\nRequired."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is an identifier for this match condition, used for strategic merging of MatchConditions, as well as providing an identifier for logging purposes. A good name should be descriptive of the associated expression. Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain prefix and '/' (e.g. ['example.com/MyName')]('example.com/MyName'))\n\nRequired."},

  ]
)
