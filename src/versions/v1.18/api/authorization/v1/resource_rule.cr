# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::ResourceRule; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::ResourceRule`.
  module Types::Api::Authorization::V1::ResourceRule
    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
    abstract def api_groups : ::Array(String)?
    # :ditto:
    abstract def api_groups! : ::Array(String)
    # :ditto:
    abstract def api_groups? : ::Array(String)?
    # :ditto:
    abstract def api_groups=(value : ::Array(String))
    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
    abstract def resource_names : ::Array(String)?
    # :ditto:
    abstract def resource_names! : ::Array(String)
    # :ditto:
    abstract def resource_names? : ::Array(String)?
    # :ditto:
    abstract def resource_names=(value : ::Array(String))
    # Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
    #  [["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.)](["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.))
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String))
    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    abstract def verbs : ::Array(String)?
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
  end

  # ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_names: {key: "resourceNames", accessor: "resource_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.\n [\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.](\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::ResourceRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::ResourceRule
    k8s_object_accessor("apiGroups", api_groups : ::Array(String), true, false, "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.")
    k8s_object_accessor("resourceNames", resource_names : ::Array(String), true, false, "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.")
    k8s_object_accessor("resources", resources : ::Array(String), true, false, "Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.\n [\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.](\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.)")
    k8s_object_accessor("verbs", verbs : ::Array(String), false, false, "Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.")

    def initialize(*, api_groups : ::Array(String)? = nil, resource_names : ::Array(String)? = nil, resources : ::Array(String)? = nil, verbs : ::Array(String)? = nil)
      super()
      self.["apiGroups"] = api_groups
      self.["resourceNames"] = resource_names
      self.["resources"] = resources
      self.["verbs"] = verbs
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiGroups", accessor: "api_groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "resourceNames", accessor: "resource_names", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
