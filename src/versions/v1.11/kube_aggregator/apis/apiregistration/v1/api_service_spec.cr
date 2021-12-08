# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
  @[::K8S::Properties(
    ca_bundle: {type: String, nilable: true, key: "caBundle", getter: false, setter: false},
    group: {type: String, nilable: true, key: "group", getter: false, setter: false},
    group_priority_minimum: {type: Int32, nilable: false, key: "groupPriorityMinimum", getter: false, setter: false},
    insecure_skip_tls_verify: {type: Bool, nilable: true, key: "insecureSkipTLSVerify", getter: false, setter: false},
    service: {type: KubeAggregator::Apis::Apiregistration::V1::ServiceReference, nilable: false, key: "service", getter: false, setter: false},
    version: {type: String, nilable: true, key: "version", getter: false, setter: false},
    version_priority: {type: Int32, nilable: false, key: "versionPriority", getter: false, setter: false},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate.
    @[::JSON::Field(key: "caBundle", emit_null: false)]
    @[::YAML::Field(key: "caBundle", emit_null: false)]
    property ca_bundle : String | Nil

    # Group is the API group name this server hosts
    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : String | Nil

    # GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
    @[::JSON::Field(key: "groupPriorityMinimum", emit_null: true)]
    @[::YAML::Field(key: "groupPriorityMinimum", emit_null: true)]
    property group_priority_minimum : Int32

    # InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
    @[::JSON::Field(key: "insecureSkipTLSVerify", emit_null: false)]
    @[::YAML::Field(key: "insecureSkipTLSVerify", emit_null: false)]
    property insecure_skip_tls_verify : Bool | Nil

    # Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
    @[::JSON::Field(key: "service", emit_null: true)]
    @[::YAML::Field(key: "service", emit_null: true)]
    property service : KubeAggregator::Apis::Apiregistration::V1::ServiceReference

    # Version is the API version this server hosts.  For example, "v1"
    @[::JSON::Field(key: "version", emit_null: false)]
    @[::YAML::Field(key: "version", emit_null: false)]
    property version : String | Nil

    # VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @[::JSON::Field(key: "versionPriority", emit_null: true)]
    @[::YAML::Field(key: "versionPriority", emit_null: true)]
    property version_priority : Int32

    def initialize(*, @group_priority_minimum : Int32, @service : KubeAggregator::Apis::Apiregistration::V1::ServiceReference, @version_priority : Int32, @ca_bundle : String | Nil = nil, @group : String | Nil = nil, @insecure_skip_tls_verify : Bool | Nil = nil, @version : String | Nil = nil)
    end
  end
end
