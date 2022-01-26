# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::RollbackConfig; end

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::RollbackConfig`.
  module Types::Api::Apps::V1beta1::RollbackConfig
    # The revision to rollback to. If set to 0, rollback to the last revision.
    abstract def revision : Int32?
    # :ditto:
    abstract def revision! : Int32
    # :ditto:
    abstract def revision? : Int32?
    # :ditto:
    abstract def revision=(value : Int32?)
  end

  # DEPRECATED.
  @[::K8S::Properties(
    revision: {key: "revision", accessor: "revision", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The revision to rollback to. If set to 0, rollback to the last revision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::RollbackConfig < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1beta1::RollbackConfig

    # The revision to rollback to. If set to 0, rollback to the last revision.
    def revision : Int32?
      self.["revision"].as(Int32?)
    end

    # :ditto:
    def revision! : Int32
      self.["revision"].as(Int32?).not_nil!
    end

    # :ditto:
    def revision? : Int32?
      self.["revision"]?.as(Int32?)
    end

    # :ditto:
    def revision=(value : Int32?)
      self.["revision"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "revision", accessor: "revision", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
