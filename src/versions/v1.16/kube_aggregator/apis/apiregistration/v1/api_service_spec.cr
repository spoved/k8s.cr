# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec; end

require "./service_reference"

module K8S
  # Namespace holding the types for `KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec`.
  module Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
    # CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
    abstract def ca_bundle : String?
    # :ditto:
    abstract def ca_bundle! : String
    # :ditto:
    abstract def ca_bundle? : String?
    # :ditto:
    abstract def ca_bundle=(value : String)
    # Group is the API group name this server hosts
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
    abstract def group_priority_minimum : Int32?
    # :ditto:
    abstract def group_priority_minimum! : Int32
    # :ditto:
    abstract def group_priority_minimum? : Int32?
    # :ditto:
    abstract def group_priority_minimum=(value : Int32)
    # InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
    abstract def insecure_skip_tls_verify : ::Bool?
    # :ditto:
    abstract def insecure_skip_tls_verify! : ::Bool
    # :ditto:
    abstract def insecure_skip_tls_verify? : ::Bool?
    # :ditto:
    abstract def insecure_skip_tls_verify=(value : ::Bool)
    # Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
    abstract def service : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference?
    # :ditto:
    abstract def service! : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference
    # :ditto:
    abstract def service? : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference?
    # :ditto:
    abstract def service=(value : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference)
    # Version is the API version this server hosts.  For example, "v1"
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String)
    # VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    abstract def version_priority : Int32?
    # :ditto:
    abstract def version_priority! : Int32
    # :ditto:
    abstract def version_priority? : Int32?
    # :ditto:
    abstract def version_priority=(value : Int32)
  end

  # APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
  @[::K8S::Properties(
    ca_bundle: {key: "caBundle", accessor: "ca_bundle", kind: "String", nilable: true, default: nil, read_only: false, description: "CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "String", nilable: true, default: nil, read_only: false, description: "Group is the API group name this server hosts", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group_priority_minimum: {key: "groupPriorityMinimum", accessor: "group_priority_minimum", kind: "Int32", nilable: false, default: nil, read_only: false, description: "GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    insecure_skip_tls_verify: {key: "insecureSkipTLSVerify", accessor: "insecure_skip_tls_verify", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service: {key: "service", accessor: "service", kind: "::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference", nilable: false, default: nil, read_only: false, description: "Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: true, default: nil, read_only: false, description: "Version is the API version this server hosts.  For example, \"v1\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version_priority: {key: "versionPriority", accessor: "version_priority", kind: "Int32", nilable: false, default: nil, read_only: false, description: "VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec < ::K8S::GenericObject
    include ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
    k8s_object_accessor("caBundle", ca_bundle : String, true, false, "CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.")
    k8s_object_accessor("group", group : String, true, false, "Group is the API group name this server hosts")
    k8s_object_accessor("groupPriorityMinimum", group_priority_minimum : Int32, false, false, "GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s")
    k8s_object_accessor("insecureSkipTLSVerify", insecure_skip_tls_verify : ::Bool, true, false, "InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.")
    k8s_object_accessor("service", service : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference, false, false, "Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.")
    k8s_object_accessor("version", version : String, true, false, "Version is the API version this server hosts.  For example, \"v1\"")
    k8s_object_accessor("versionPriority", version_priority : Int32, false, false, "VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.")

    def initialize(*, ca_bundle : String? = nil, group : String? = nil, group_priority_minimum : Int32? = nil, insecure_skip_tls_verify : ::Bool? = nil, service : ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference? = nil, version : String? = nil, version_priority : Int32? = nil)
      super()
      self.["caBundle"] = ca_bundle
      self.["group"] = group
      self.["groupPriorityMinimum"] = group_priority_minimum
      self.["insecureSkipTLSVerify"] = insecure_skip_tls_verify
      self.["service"] = service
      self.["version"] = version
      self.["versionPriority"] = version_priority
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "caBundle", accessor: "ca_bundle", nilable: true, read_only: false, default: nil, kind: String},
      {key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String},
      {key: "groupPriorityMinimum", accessor: "group_priority_minimum", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "insecureSkipTLSVerify", accessor: "insecure_skip_tls_verify", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "service", accessor: "service", nilable: false, read_only: false, default: nil, kind: ::K8S::KubeAggregator::Apis::Apiregistration::V1::ServiceReference},
      {key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "versionPriority", accessor: "version_priority", nilable: false, read_only: false, default: nil, kind: Int32},
    ])
  end
end
