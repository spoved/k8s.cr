# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("ParamRef",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "`name` is the name of the resource being referenced.\n\n`name` and `selector` are mutually exclusive properties. If one is set, the other must be unset."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "namespace is the namespace of the referenced resource. Allows limiting the search for params to a specific namespace. Applies to both `name` and `selector` fields.\n\nA per-namespace parameter may be used by specifying a namespace-scoped `paramKind` in the policy and leaving this field empty.\n\n- If `paramKind` is cluster-scoped, this field MUST be unset. Setting this field results in a configuration error.\n\n- If `paramKind` is namespace-scoped, the namespace of the object being evaluated for admission will be used when this field is left unset. Take care that if this is left empty the binding must not match any cluster-scoped resources, which will result in an error."},
    {name: "parameter_not_found_action", kind: String, key: "parameterNotFoundAction", nilable: true, read_only: false, description: "`parameterNotFoundAction` controls the behavior of the binding when the resource exists, and name or selector is valid, but there are no parameters matched by the binding. If the value is set to `Allow`, then no matched parameters will be treated as successful validation by the binding. If set to `Deny`, then no matched parameters will be subject to the `failurePolicy` of the policy.\n\nAllowed values are `Allow` or `Deny` Default to `Deny`"},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "selector can be used to match multiple param objects based on their labels. Supply selector: {} to match all resources of the ParamKind.\n\nIf multiple params are found, they are all evaluated with the policy expressions and the results are ANDed together.\n\nOne of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive properties. If one is set, the other must be unset."},

  ]
)
