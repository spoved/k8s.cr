# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1beta1::ServiceReference; end

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1beta1::ServiceReference`.
  module Types::Api::Admissionregistration::V1beta1::ServiceReference
    # `name` is the name of the service. Required
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # `namespace` is the namespace of the service. Required
    abstract def namespace : String
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
    # `path` is an optional URL path which will be sent in any request to this service.
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String?)
  end

  # ServiceReference holds a reference to Service.legacy.k8s.io
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "`name` is the name of the service. Required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: false, default: nil, read_only: false, description: "`namespace` is the namespace of the service. Required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "`path` is an optional URL path which will be sent in any request to this service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Admissionregistration::V1beta1::ServiceReference < ::K8S::GenericObject
    include ::K8S::Types::Api::Admissionregistration::V1beta1::ServiceReference

    # `name` is the name of the service. Required
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # `namespace` is the namespace of the service. Required
    def namespace : String
      self.["namespace"].as(String)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String)
      self.["namespace"] = value
    end

    # `path` is an optional URL path which will be sent in any request to this service.
    def path : String?
      self.["path"].as(String?)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String?).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String?)
      self.["path"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: false, read_only: false, default: nil, kind: String },
        { key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
