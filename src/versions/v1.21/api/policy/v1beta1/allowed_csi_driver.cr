# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::AllowedCSIDriver; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::AllowedCSIDriver`.
  module Types::Api::Policy::V1beta1::AllowedCSIDriver
    # Name is the registered name of the CSI driver
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the registered name of the CSI driver", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::AllowedCSIDriver < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::AllowedCSIDriver
    k8s_object_accessor("name", name : String, false, false, "Name is the registered name of the CSI driver")

    def initialize(*, name : String? = nil)
      super()
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
