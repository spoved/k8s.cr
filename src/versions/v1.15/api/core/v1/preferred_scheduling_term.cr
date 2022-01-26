# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PreferredSchedulingTerm; end

require "./node_selector_term"

module K8S
  # Namespace holding the types for `Api::Core::V1::PreferredSchedulingTerm`.
  module Types::Api::Core::V1::PreferredSchedulingTerm
    # A node selector term, associated with the corresponding weight.
    abstract def preference : ::K8S::Api::Core::V1::NodeSelectorTerm
    # :ditto:
    abstract def preference! : ::K8S::Api::Core::V1::NodeSelectorTerm
    # :ditto:
    abstract def preference? : ::K8S::Api::Core::V1::NodeSelectorTerm?
    # :ditto:
    abstract def preference=(value : ::K8S::Api::Core::V1::NodeSelectorTerm)
    # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    abstract def weight : Int32
    # :ditto:
    abstract def weight! : Int32
    # :ditto:
    abstract def weight? : Int32?
    # :ditto:
    abstract def weight=(value : Int32)
  end

  # An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
  @[::K8S::Properties(
    preference: {key: "preference", accessor: "preference", kind: "::K8S::Api::Core::V1::NodeSelectorTerm", nilable: false, default: nil, read_only: false, description: "A node selector term, associated with the corresponding weight.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    weight: {key: "weight", accessor: "weight", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PreferredSchedulingTerm < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PreferredSchedulingTerm

    # A node selector term, associated with the corresponding weight.
    def preference : ::K8S::Api::Core::V1::NodeSelectorTerm
      self.["preference"].as(::K8S::Api::Core::V1::NodeSelectorTerm)
    end

    # :ditto:
    def preference! : ::K8S::Api::Core::V1::NodeSelectorTerm
      self.["preference"].as(::K8S::Api::Core::V1::NodeSelectorTerm).not_nil!
    end

    # :ditto:
    def preference? : ::K8S::Api::Core::V1::NodeSelectorTerm?
      self.["preference"]?.as(::K8S::Api::Core::V1::NodeSelectorTerm?)
    end

    # :ditto:
    def preference=(value : ::K8S::Api::Core::V1::NodeSelectorTerm)
      self.["preference"] = value
    end

    # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    def weight : Int32
      self.["weight"].as(Int32)
    end

    # :ditto:
    def weight! : Int32
      self.["weight"].as(Int32).not_nil!
    end

    # :ditto:
    def weight? : Int32?
      self.["weight"]?.as(Int32?)
    end

    # :ditto:
    def weight=(value : Int32)
      self.["weight"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "preference", accessor: "preference", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeSelectorTerm },
        { key: "weight", accessor: "weight", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
