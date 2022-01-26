# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::LimitResponse; end

require "./queuing_configuration"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::LimitResponse`.
  module Types::Api::Flowcontrol::V1alpha1::LimitResponse
    # `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
    abstract def queuing : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?
    # :ditto:
    abstract def queuing! : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration
    # :ditto:
    abstract def queuing? : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?
    # :ditto:
    abstract def queuing=(value : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?)
    # `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # LimitResponse defines how to handle requests that can not be executed right now.
  @[::K8S::Properties(
    queuing: {key: "queuing", accessor: "queuing", kind: "::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration", nilable: true, default: nil, read_only: false, description: "`queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `\"Queue\"`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "`type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::LimitResponse < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::LimitResponse

    # `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
    def queuing : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?
      self.["queuing"].as(::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?)
    end

    # :ditto:
    def queuing! : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration
      self.["queuing"].as(::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?).not_nil!
    end

    # :ditto:
    def queuing? : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?
      self.["queuing"]?.as(::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?)
    end

    # :ditto:
    def queuing=(value : ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration?)
      self.["queuing"] = value
    end

    # `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
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
        { key: "queuing", accessor: "queuing", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1alpha1::QueuingConfiguration },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
