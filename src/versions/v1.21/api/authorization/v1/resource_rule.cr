# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::ResourceRule; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::ResourceRule`.
  module Types::Api::Authorization::V1::ResourceRule
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
    abstract def api_groups : ::Array(String)?
    # :ditto:
    abstract def api_groups! : ::Array(String)
    # :ditto:
    abstract def api_groups? : ::Array(String)?
    # :ditto:
    abstract def api_groups=(value : ::Array(String)?)
    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
    abstract def resource_names : ::Array(String)?
    # :ditto:
    abstract def resource_names! : ::Array(String)
    # :ditto:
    abstract def resource_names? : ::Array(String)?
    # :ditto:
    abstract def resource_names=(value : ::Array(String)?)
    # Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
    #  [["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.)](["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.))
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String)?)
    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    abstract def verbs : ::Array(String)
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
  end

  # ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all."},
    resource_names: {key: "resourceNames", accessor: "resource_names", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all."},
    resources: {key: "resources", accessor: "resources", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.\n [\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.](\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.)"},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all."},
  )]
  class Api::Authorization::V1::ResourceRule < ::K8S::Types::Api::Authorization::V1::ResourceRule::Instance
    include ::K8S::Types::Api::Authorization::V1::ResourceRule
    include ::K8S::Kubernetes::Object

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
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

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
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

    # Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
    #  [["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.)](["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.))
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

    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
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
        { key: "resourceNames", accessor: "resource_names", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
