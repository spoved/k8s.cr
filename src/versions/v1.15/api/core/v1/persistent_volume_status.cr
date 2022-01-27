# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeStatus`.
  module Types::Api::Core::V1::PersistentVolumeStatus
    # A human-readable message indicating details about why the volume is in this state.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String)
    # Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
  end

  # PersistentVolumeStatus is the current status of a persistent volume.
  @[::K8S::Properties(
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable message indicating details about why the volume is in this state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeStatus
    k8s_object_accessor("message", message : String, true, false, "A human-readable message indicating details about why the volume is in this state.")
    k8s_object_accessor("phase", phase : String, true, false, "Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)")
    k8s_object_accessor("reason", reason : String, true, false, "Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.")

    def initialize(*, message : String? = nil, phase : String? = nil, reason : String? = nil)
      super()
      self.["message"] = message
      self.["phase"] = phase
      self.["reason"] = reason
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
