# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressClassSpec provides information about the class of an Ingress.
  @[::K8S::Properties(
    controller: {type: String, nilable: true, key: "controller", getter: false, setter: false},
    parameters: {type: Api::Networking::V1::IngressClassParametersReference, nilable: true, key: "parameters", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressClassSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. ["acme.io/ingress-controller". This field is immutable.]("acme.io/ingress-controller". This field is immutable.)
    property controller : String | Nil

    # Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
    property parameters : Api::Networking::V1::IngressClassParametersReference | Nil

    def initialize(*, @controller : String | Nil = nil, @parameters : Api::Networking::V1::IngressClassParametersReference | Nil = nil)
    end
  end
end
