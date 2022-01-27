# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::ResourcePolicyRule`.
  module Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule
    # `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
    abstract def api_groups : ::Set(String)?
    # :ditto:
    abstract def api_groups! : ::Set(String)
    # :ditto:
    abstract def api_groups? : ::Set(String)?
    # :ditto:
    abstract def api_groups=(value : ::Set(String))
    # `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
    abstract def cluster_scope : ::Bool?
    # :ditto:
    abstract def cluster_scope! : ::Bool
    # :ditto:
    abstract def cluster_scope? : ::Bool?
    # :ditto:
    abstract def cluster_scope=(value : ::Bool)
    # `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
    abstract def namespaces : ::Set(String)?
    # :ditto:
    abstract def namespaces! : ::Set(String)
    # :ditto:
    abstract def namespaces? : ::Set(String)?
    # :ditto:
    abstract def namespaces=(value : ::Set(String))
    # `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", [["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.)](["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.))
    abstract def resources : ::Set(String)?
    # :ditto:
    abstract def resources! : ::Set(String)
    # :ditto:
    abstract def resources? : ::Set(String)?
    # :ditto:
    abstract def resources=(value : ::Set(String))
    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
    abstract def verbs : ::Set(String)?
    # :ditto:
    abstract def verbs! : ::Set(String)
    # :ditto:
    abstract def verbs? : ::Set(String)?
    # :ditto:
    abstract def verbs=(value : ::Set(String))
  end

  # ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) least one member of namespaces matches the request.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    cluster_scope: {key: "clusterScope", accessor: "cluster_scope", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "`clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespaces: {key: "namespaces", accessor: "namespaces", kind: "::Set(String)", nilable: true, default: nil, read_only: false, description: "`namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", [\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.](\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::ResourcePolicyRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule
    k8s_object_accessor("apiGroups", api_groups : ::Set(String), false, false, "`apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.")
    k8s_object_accessor("clusterScope", cluster_scope : ::Bool, true, false, "`clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.")
    k8s_object_accessor("namespaces", namespaces : ::Set(String), true, false, "`namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.")
    k8s_object_accessor("resources", resources : ::Set(String), false, false, "`resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", [\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.](\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.)")
    k8s_object_accessor("verbs", verbs : ::Set(String), false, false, "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.")

    def initialize(*, api_groups : ::Set(String)? = nil, cluster_scope : ::Bool? = nil, namespaces : ::Set(String)? = nil, resources : ::Set(String)? = nil, verbs : ::Set(String)? = nil)
      super()
      self.["apiGroups"] = api_groups
      self.["clusterScope"] = cluster_scope
      self.["namespaces"] = namespaces
      self.["resources"] = resources
      self.["verbs"] = verbs
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiGroups", accessor: "api_groups", nilable: false, read_only: false, default: nil, kind: ::Set(String)},
      {key: "clusterScope", accessor: "cluster_scope", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "namespaces", accessor: "namespaces", nilable: true, read_only: false, default: nil, kind: ::Set(String)},
      {key: "resources", accessor: "resources", nilable: false, read_only: false, default: nil, kind: ::Set(String)},
      {key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Set(String)},
    ])
  end
end
