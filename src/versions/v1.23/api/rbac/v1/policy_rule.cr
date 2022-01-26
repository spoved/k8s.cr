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
    abstract def api_groups=(value : ::Array(String)?)
    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as [["/api"),  but not both.]("/api"),  but not both.)](["/api"),  but not both.]("/api"),  but not both.))
    abstract def non_resource_urls : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls! : ::Array(String)
    # :ditto:
    abstract def non_resource_urls? : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls=(value : ::Array(String)?)
    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    abstract def resource_names : ::Array(String)?
    # :ditto:
    abstract def resource_names! : ::Array(String)
    # :ditto:
    abstract def resource_names? : ::Array(String)?
    # :ditto:
    abstract def resource_names=(value : ::Array(String)?)
    # Resources is a list of resources this rule applies to. '*' represents all resources.
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String)?)
    # Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    abstract def verbs : ::Array(String)
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

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    def api_groups : ::Array(String)?
      self.["apiGroups"].as(::Array(String)?)
    end

    # :ditto:
    def api_groups! : ::Array(String)
      self.["apiGroups"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def api_groups? : ::Array(String)?
      self.["apiGroups"]?.as(::Array(String)?)
    end

    # :ditto:
    def api_groups=(value : ::Array(String)?)
      self.["apiGroups"] = value
    end

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as [["/api"),  but not both.]("/api"),  but not both.)](["/api"),  but not both.]("/api"),  but not both.))
    def non_resource_urls : ::Array(String)?
      self.["nonResourceURLs"].as(::Array(String)?)
    end

    # :ditto:
    def non_resource_urls! : ::Array(String)
      self.["nonResourceURLs"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def non_resource_urls? : ::Array(String)?
      self.["nonResourceURLs"]?.as(::Array(String)?)
    end

    # :ditto:
    def non_resource_urls=(value : ::Array(String)?)
      self.["nonResourceURLs"] = value
    end

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    def resource_names : ::Array(String)?
      self.["resourceNames"].as(::Array(String)?)
    end

    # :ditto:
    def resource_names! : ::Array(String)
      self.["resourceNames"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def resource_names? : ::Array(String)?
      self.["resourceNames"]?.as(::Array(String)?)
    end

    # :ditto:
    def resource_names=(value : ::Array(String)?)
      self.["resourceNames"] = value
    end

    # Resources is a list of resources this rule applies to. '*' represents all resources.
    def resources : ::Array(String)?
      self.["resources"].as(::Array(String)?)
    end

    # :ditto:
    def resources! : ::Array(String)
      self.["resources"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def resources? : ::Array(String)?
      self.["resources"]?.as(::Array(String)?)
    end

    # :ditto:
    def resources=(value : ::Array(String)?)
      self.["resources"] = value
    end

    # Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    def verbs : ::Array(String)
      self.["verbs"].as(::Array(String))
    end

    # :ditto:
    def verbs! : ::Array(String)
      self.["verbs"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def verbs? : ::Array(String)?
      self.["verbs"]?.as(::Array(String)?)
    end

    # :ditto:
    def verbs=(value : ::Array(String))
      self.["verbs"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiGroups", accessor: "api_groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "nonResourceURLs", accessor: "non_resource_urls", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "resourceNames", accessor: "resource_names", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
