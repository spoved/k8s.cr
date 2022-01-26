# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Preconditions; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Preconditions`.
  module Types::Apimachinery::Apis::Meta::V1::Preconditions
    # Specifies the target UID.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
  end

  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  @[::K8S::Properties(
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the target UID.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::Preconditions < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Preconditions

    # Specifies the target UID.
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
