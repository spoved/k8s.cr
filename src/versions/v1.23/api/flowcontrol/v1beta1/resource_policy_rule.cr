# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::ResourcePolicyRule`.
  module Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule
    alias ValueType = ::Set(String) | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
    abstract def api_groups : ::Set(String)
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
    abstract def cluster_scope=(value : ::Bool?)
    # `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
    abstract def namespaces : ::Set(String)?
    # :ditto:
    abstract def namespaces! : ::Set(String)
    # :ditto:
    abstract def namespaces? : ::Set(String)?
    # :ditto:
    abstract def namespaces=(value : ::Set(String)?)
    # `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", [["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.)](["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.))
    abstract def resources : ::Set(String)
    # :ditto:
    abstract def resources! : ::Set(String)
    # :ditto:
    abstract def resources? : ::Set(String)?
    # :ditto:
    abstract def resources=(value : ::Set(String))
    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
    abstract def verbs : ::Set(String)
    # :ditto:
    abstract def verbs! : ::Set(String)
    # :ditto:
    abstract def verbs? : ::Set(String)?
    # :ditto:
    abstract def verbs=(value : ::Set(String))
  end

  # ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    cluster_scope: {key: "clusterScope", accessor: "cluster_scope", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "`clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespaces: {key: "namespaces", accessor: "namespaces", kind: "::Set(String)", nilable: true, default: nil, read_only: false, description: "`namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", [\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.](\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::ResourcePolicyRule < ::K8S::Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule::Instance
    include ::K8S::Types::Api::Flowcontrol::V1beta1::ResourcePolicyRule
    include ::K8S::Kubernetes::Object

    # `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
    def api_groups : ::Set(String)
      self.["apiGroups"].as(::Set(String))
    end

    # :ditto:
    def api_groups! : ::Set(String)
      self.["apiGroups"].as(::Set(String)).not_nil!
    end

    # :ditto:
    def api_groups? : ::Set(String)?
      self.["apiGroups"]?.as(::Set(String)?)
    end

    # :ditto:
    def api_groups=(value : ::Set(String))
      self.["apiGroups"] = value
    end

    # `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
    def cluster_scope : ::Bool?
      self.["clusterScope"].as(::Bool?)
    end

    # :ditto:
    def cluster_scope! : ::Bool
      self.["clusterScope"].as(::Bool?).not_nil!
    end

    # :ditto:
    def cluster_scope? : ::Bool?
      self.["clusterScope"]?.as(::Bool?)
    end

    # :ditto:
    def cluster_scope=(value : ::Bool?)
      self.["clusterScope"] = value
    end

    # `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
    def namespaces : ::Set(String)?
      self.["namespaces"].as(::Set(String)?)
    end

    # :ditto:
    def namespaces! : ::Set(String)
      self.["namespaces"].as(::Set(String)?).not_nil!
    end

    # :ditto:
    def namespaces? : ::Set(String)?
      self.["namespaces"]?.as(::Set(String)?)
    end

    # :ditto:
    def namespaces=(value : ::Set(String)?)
      self.["namespaces"] = value
    end

    # `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", [["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.)](["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.))
    def resources : ::Set(String)
      self.["resources"].as(::Set(String))
    end

    # :ditto:
    def resources! : ::Set(String)
      self.["resources"].as(::Set(String)).not_nil!
    end

    # :ditto:
    def resources? : ::Set(String)?
      self.["resources"]?.as(::Set(String)?)
    end

    # :ditto:
    def resources=(value : ::Set(String))
      self.["resources"] = value
    end

    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
    def verbs : ::Set(String)
      self.["verbs"].as(::Set(String))
    end

    # :ditto:
    def verbs! : ::Set(String)
      self.["verbs"].as(::Set(String)).not_nil!
    end

    # :ditto:
    def verbs? : ::Set(String)?
      self.["verbs"]?.as(::Set(String)?)
    end

    # :ditto:
    def verbs=(value : ::Set(String))
      self.["verbs"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiGroups", accessor: "api_groups", nilable: false, read_only: false, default: nil, kind: ::Set(String) },
        { key: "clusterScope", accessor: "cluster_scope", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "namespaces", accessor: "namespaces", nilable: true, read_only: false, default: nil, kind: ::Set(String) },
        { key: "resources", accessor: "resources", nilable: false, read_only: false, default: nil, kind: ::Set(String) },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Set(String) },
      ])
end
  end
end
