# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Initializer describes the name and the failure policy of an initializer, and what resources it applies to.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::Initializer
    # FailurePolicy defines what happens if the responsible initializer controller fails to takes action. Allowed values are Ignore, or Fail. If "Ignore" is set, initializer is removed from the initializers list of an object if the timeout is reached; If "Fail" is set, admissionregistration returns timeout error if the timeout is reached.
    property failure_policy : String | Nil

    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    property name : String

    # Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)
    property rules : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::Rule) | Nil

    ::YAML.mapping({
      failure_policy: {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      name:           {type: String, nilable: false, key: "name", getter: false, setter: false},
      rules:          {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::Rule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      failure_policy: {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      name:           {type: String, nilable: false, key: "name", getter: false, setter: false},
      rules:          {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::Rule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @failure_policy : String | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
