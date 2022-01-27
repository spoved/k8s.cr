# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Auditregistration::V1alpha1::Policy; end

module K8S
  # Namespace holding the types for `Api::Auditregistration::V1alpha1::Policy`.
  module Types::Api::Auditregistration::V1alpha1::Policy
    # The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
    abstract def level : String?
    # :ditto:
    abstract def level! : String
    # :ditto:
    abstract def level? : String?
    # :ditto:
    abstract def level=(value : String)
    # Stages is a list of stages for which events are created.
    abstract def stages : ::Array(String)?
    # :ditto:
    abstract def stages! : ::Array(String)
    # :ditto:
    abstract def stages? : ::Array(String)?
    # :ditto:
    abstract def stages=(value : ::Array(String))
  end

  # Policy defines the configuration of how audit events are logged
  @[::K8S::Properties(
    level: {key: "level", accessor: "level", kind: "String", nilable: false, default: nil, read_only: false, description: "The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stages: {key: "stages", accessor: "stages", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Stages is a list of stages for which events are created.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Auditregistration::V1alpha1::Policy < ::K8S::GenericObject
    include ::K8S::Types::Api::Auditregistration::V1alpha1::Policy
    k8s_object_accessor("level", level : String, false, false, "The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required")
    k8s_object_accessor("stages", stages : ::Array(String), true, false, "Stages is a list of stages for which events are created.")

    def initialize(*, level : String? = nil, stages : ::Array(String)? = nil)
      super()
      self.["level"] = level
      self.["stages"] = stages
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "level", accessor: "level", nilable: false, read_only: false, default: nil, kind: String},
      {key: "stages", accessor: "stages", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
