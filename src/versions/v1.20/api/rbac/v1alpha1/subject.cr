# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Subject",
  namespace: "::K8S::Api::Rbac::V1alpha1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "APIVersion holds the API group and version of the referenced subject. Defaults to \"v1\" for ServiceAccount subjects. Defaults to [\"rbac.authorization.k8s.io/v1alpha1\" for User and Group subjects.](\"rbac.authorization.k8s.io/v1alpha1\" for User and Group subjects.)"},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of the object being referenced."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error."},

  ]
)
