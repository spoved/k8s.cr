# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Condition",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: false, read_only: false, description: "lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable."},
    {name: "message", kind: String, key: "message", nilable: false, read_only: false, description: "message is a human readable message indicating details about the transition. This may be an empty string."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance."},
    {name: "reason", kind: String, key: "reason", nilable: false, read_only: false, description: "reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "status of the condition, one of True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)"},

  ]
)
