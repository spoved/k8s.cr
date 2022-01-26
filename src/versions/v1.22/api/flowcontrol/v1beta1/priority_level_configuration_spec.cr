# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec; end

require "./limited_priority_level_configuration"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec`.
  module Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec
    # `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
    abstract def limited : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?
    # :ditto:
    abstract def limited! : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration
    # :ditto:
    abstract def limited? : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?
    # :ditto:
    abstract def limited=(value : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?)
    # `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # PriorityLevelConfigurationSpec specifies the configuration of a priority level.
  @[::K8S::Properties(
    limited: {key: "limited", accessor: "limited", kind: "::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration", nilable: true, default: nil, read_only: false, description: "`limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `\"Limited\"`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "`type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec

    # `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
    def limited : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?
      self.["limited"].as(::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?)
    end

    # :ditto:
    def limited! : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration
      self.["limited"].as(::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?).not_nil!
    end

    # :ditto:
    def limited? : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?
      self.["limited"]?.as(::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?)
    end

    # :ditto:
    def limited=(value : ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration?)
      self.["limited"] = value
    end

    # `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "limited", accessor: "limited", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
