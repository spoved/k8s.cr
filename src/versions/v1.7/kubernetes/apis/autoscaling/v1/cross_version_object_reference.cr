# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference
    # API version of the referent
    property api_version : String | Nil

    # Kind of the referent; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds"](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds")
    property kind : String

    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    ::YAML.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:        {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:        {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @kind : String, @name : String, @api_version : String | Nil = nil)
    end
  end
end
