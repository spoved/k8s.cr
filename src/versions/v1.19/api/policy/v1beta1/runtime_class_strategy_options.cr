# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::RuntimeClassStrategyOptions; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::RuntimeClassStrategyOptions`.
  module Types::Api::Policy::V1beta1::RuntimeClassStrategyOptions
    # allowedRuntimeClassNames is an allowlist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
    abstract def allowed_runtime_class_names : ::Array(String)?
    # :ditto:
    abstract def allowed_runtime_class_names! : ::Array(String)
    # :ditto:
    abstract def allowed_runtime_class_names? : ::Array(String)?
    # :ditto:
    abstract def allowed_runtime_class_names=(value : ::Array(String))
    # defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
    abstract def default_runtime_class_name : String?
    # :ditto:
    abstract def default_runtime_class_name! : String
    # :ditto:
    abstract def default_runtime_class_name? : String?
    # :ditto:
    abstract def default_runtime_class_name=(value : String)
  end

  # RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
  @[::K8S::Properties(
    allowed_runtime_class_names: {key: "allowedRuntimeClassNames", accessor: "allowed_runtime_class_names", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "allowedRuntimeClassNames is an allowlist of RuntimeClass names that may be specified on a pod. A value of \"*\" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    default_runtime_class_name: {key: "defaultRuntimeClassName", accessor: "default_runtime_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::RuntimeClassStrategyOptions < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::RuntimeClassStrategyOptions
    k8s_object_accessor("allowedRuntimeClassNames", allowed_runtime_class_names : ::Array(String), false, false, "allowedRuntimeClassNames is an allowlist of RuntimeClass names that may be specified on a pod. A value of \"*\" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.")
    k8s_object_accessor("defaultRuntimeClassName", default_runtime_class_name : String, true, false, "defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.")

    def initialize(*, allowed_runtime_class_names : ::Array(String)? = nil, default_runtime_class_name : String? = nil)
      super()
      self.["allowedRuntimeClassNames"] = allowed_runtime_class_names
      self.["defaultRuntimeClassName"] = default_runtime_class_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "allowedRuntimeClassNames", accessor: "allowed_runtime_class_names", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
      {key: "defaultRuntimeClassName", accessor: "default_runtime_class_name", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
