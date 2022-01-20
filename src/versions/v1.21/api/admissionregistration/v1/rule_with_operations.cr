# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1::RuleWithOperations; end

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1::RuleWithOperations`.
  module Types::Api::Admissionregistration::V1::RuleWithOperations
    alias ValueType = ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    abstract def api_groups : ::Array(String)?
    # :ditto:
    abstract def api_groups! : ::Array(String)
    # :ditto:
    abstract def api_groups? : ::Array(String)?
    # :ditto:
    abstract def api_groups=(value : ::Array(String)?)
    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    abstract def api_versions : ::Array(String)?
    # :ditto:
    abstract def api_versions! : ::Array(String)
    # :ditto:
    abstract def api_versions? : ::Array(String)?
    # :ditto:
    abstract def api_versions=(value : ::Array(String)?)
    # Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
    abstract def operations : ::Array(String)?
    # :ditto:
    abstract def operations! : ::Array(String)
    # :ditto:
    abstract def operations? : ::Array(String)?
    # :ditto:
    abstract def operations=(value : ::Array(String)?)
    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. [['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)](['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.))
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String)?)
    # scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
    abstract def scope : String?
    # :ditto:
    abstract def scope! : String
    # :ditto:
    abstract def scope? : String?
    # :ditto:
    abstract def scope=(value : String?)
  end

  # RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure that all the tuple expansions are valid.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    api_versions: {key: "apiVersions", accessor: "api_versions", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operations: {key: "operations", accessor: "operations", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Resources is a list of resources this rule applies to.\n\nFor example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)\n\nIf wildcard is present, the validation rule will ensure resources do not overlap with each other.\n\nDepending on the enclosing object, subresources might not be allowed. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope: {key: "scope", accessor: "scope", kind: "String", nilable: true, default: nil, read_only: false, description: "scope specifies the scope of this rule. Valid values are \"Cluster\", \"Namespaced\", and \"*\" \"Cluster\" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. \"Namespaced\" means that only namespaced resources will match this rule. \"*\" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is \"*\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Admissionregistration::V1::RuleWithOperations < ::K8S::Types::Api::Admissionregistration::V1::RuleWithOperations::Instance
    include ::K8S::Types::Api::Admissionregistration::V1::RuleWithOperations
    include ::K8S::Kubernetes::Object

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
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

    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    def api_versions : ::Array(String)?
      self.["apiVersions"].as(::Array(String)?)
    end

    # :ditto:
    def api_versions! : ::Array(String)
      self.["apiVersions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def api_versions? : ::Array(String)?
      self.["apiVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def api_versions=(value : ::Array(String)?)
      self.["apiVersions"] = value
    end

    # Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
    def operations : ::Array(String)?
      self.["operations"].as(::Array(String)?)
    end

    # :ditto:
    def operations! : ::Array(String)
      self.["operations"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def operations? : ::Array(String)?
      self.["operations"]?.as(::Array(String)?)
    end

    # :ditto:
    def operations=(value : ::Array(String)?)
      self.["operations"] = value
    end

    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. [['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)](['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.))
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
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

    # scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*" "Cluster" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. "Namespaced" means that only namespaced resources will match this rule. "*" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is "*".
    def scope : String?
      self.["scope"].as(String?)
    end

    # :ditto:
    def scope! : String
      self.["scope"].as(String?).not_nil!
    end

    # :ditto:
    def scope? : String?
      self.["scope"]?.as(String?)
    end

    # :ditto:
    def scope=(value : String?)
      self.["scope"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiGroups", accessor: "api_groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "apiVersions", accessor: "api_versions", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "operations", accessor: "operations", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "scope", accessor: "scope", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
