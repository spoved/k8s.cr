# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  @[::K8S::Properties(
    paths: {type: Array(Api::Extensions::V1beta1::HTTPIngressPath), nilable: false, key: "paths", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::HTTPIngressRuleValue
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A collection of paths that map requests to backends.
    property paths : Array(Api::Extensions::V1beta1::HTTPIngressPath)

    def initialize(*, @paths : Array)
    end
  end
end
