# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Rbac::V1::PolicyRule; end

module K8S
  # Namespace holding the types for `Api::Rbac::V1::PolicyRule`.
  module Types::Api::Rbac::V1::PolicyRule
    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    abstract def api_groups : ::Array(String)?
    # :ditto:
    abstract def api_groups! : ::Array(String)
    # :ditto:
    abstract def api_groups? : ::Array(String)?
    # :ditto:
    abstract def api_groups=(value : ::Array(String))
    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as [["/api"),  but not both.]("/api"),  but not both.)](["/api"),  but not both.]("/api"),  but not both.))
    abstract def non_resource_urls : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls! : ::Array(String)
    # :ditto:
    abstract def non_resource_urls? : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls=(value : ::Array(String))
    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    abstract def resource_names : ::Array(String)?
    # :ditto:
    abstract def resource_names! : ::Array(String)
    # :ditto:
    abstract def resource_names? : ::Array(String)?
    # :ditto:
    abstract def resource_names=(value : ::Array(String))
    # Resources is a list of resources this rule applies to. '*' represents all resources.
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String))
    # Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    abstract def verbs : ::Array(String)?
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
  end

  # PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    non_resource_urls: {key: "nonResourceURLs", accessor: "non_resource_urls", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as [\"/api\"),  but not both.](\"/api\"),  but not both.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_names: {key: "resourceNames", accessor: "resource_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Resources is a list of resources this rule applies to. '*' represents all resources.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Rbac::V1::PolicyRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Rbac::V1::PolicyRule
    k8s_object_accessor("apiGroups", api_groups : ::Array(String), true, false, "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.")
    k8s_object_accessor("nonResourceURLs", non_resource_urls : ::Array(String), true, false, "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as [\"/api\"),  but not both.](\"/api\"),  but not both.)")
    k8s_object_accessor("resourceNames", resource_names : ::Array(String), true, false, "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.")
    k8s_object_accessor("resources", resources : ::Array(String), true, false, "Resources is a list of resources this rule applies to. '*' represents all resources.")
    k8s_object_accessor("verbs", verbs : ::Array(String), false, false, "Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.")

    def initialize(*, api_groups : ::Array(String)? = nil, non_resource_urls : ::Array(String)? = nil, resource_names : ::Array(String)? = nil, resources : ::Array(String)? = nil, verbs : ::Array(String)? = nil)
      super()
      self.["apiGroups"] = api_groups
      self.["nonResourceURLs"] = non_resource_urls
      self.["resourceNames"] = resource_names
      self.["resources"] = resources
      self.["verbs"] = verbs
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiGroups", accessor: "api_groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "nonResourceURLs", accessor: "non_resource_urls", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "resourceNames", accessor: "resource_names", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
