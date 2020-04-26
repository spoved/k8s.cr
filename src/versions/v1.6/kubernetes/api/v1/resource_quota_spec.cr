# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  class Kubernetes::Api::V1::ResourceQuotaSpec
    # Hard is the set of desired hard limits for each named resource. More info: [http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota](http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota)
    property hard : Hash(String, String) | Nil

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    property scopes : Array(String) | Nil

    ::YAML.mapping({
      hard:   {type: Hash(String, String), nilable: true, key: "hard", getter: false, setter: false},
      scopes: {type: Array(String), nilable: true, key: "scopes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      hard:   {type: Hash(String, String), nilable: true, key: "hard", getter: false, setter: false},
      scopes: {type: Array(String), nilable: true, key: "scopes", getter: false, setter: false},
    }, true)

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @scopes : Array | Nil = nil)
    end
  end
end
