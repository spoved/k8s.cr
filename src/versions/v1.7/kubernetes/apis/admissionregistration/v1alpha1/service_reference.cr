# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ServiceReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the name of the service Required
    property name : String

    # Namespace is the namespace of the service Required
    property namespace : String

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @namespace : String)
    end
  end
end
