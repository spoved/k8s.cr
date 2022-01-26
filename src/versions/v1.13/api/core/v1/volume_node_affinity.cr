# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::VolumeNodeAffinity; end

require "./node_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::VolumeNodeAffinity`.
  module Types::Api::Core::V1::VolumeNodeAffinity
    # Required specifies hard node constraints that must be met.
    abstract def required : ::K8S::Api::Core::V1::NodeSelector?
    # :ditto:
    abstract def required! : ::K8S::Api::Core::V1::NodeSelector
    # :ditto:
    abstract def required? : ::K8S::Api::Core::V1::NodeSelector?
    # :ditto:
    abstract def required=(value : ::K8S::Api::Core::V1::NodeSelector?)
  end

  # VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
  @[::K8S::Properties(
    required: {key: "required", accessor: "required", kind: "::K8S::Api::Core::V1::NodeSelector", nilable: true, default: nil, read_only: false, description: "Required specifies hard node constraints that must be met.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::VolumeNodeAffinity < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::VolumeNodeAffinity

    # Required specifies hard node constraints that must be met.
    def required : ::K8S::Api::Core::V1::NodeSelector?
      self.["required"].as(::K8S::Api::Core::V1::NodeSelector?)
    end

    # :ditto:
    def required! : ::K8S::Api::Core::V1::NodeSelector
      self.["required"].as(::K8S::Api::Core::V1::NodeSelector?).not_nil!
    end

    # :ditto:
    def required? : ::K8S::Api::Core::V1::NodeSelector?
      self.["required"]?.as(::K8S::Api::Core::V1::NodeSelector?)
    end

    # :ditto:
    def required=(value : ::K8S::Api::Core::V1::NodeSelector?)
      self.["required"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "required", accessor: "required", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeSelector },
      ])
end
  end
end
