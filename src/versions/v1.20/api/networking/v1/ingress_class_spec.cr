# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressClassSpec; end

require "../../core/v1/typed_local_object_reference"

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressClassSpec`.
  module Types::Api::Networking::V1::IngressClassSpec
    # Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. [["acme.io/ingress-controller". This field is immutable.]("acme.io/ingress-controller". This field is immutable.)](["acme.io/ingress-controller". This field is immutable.]("acme.io/ingress-controller". This field is immutable.))
    abstract def controller : String?
    # :ditto:
    abstract def controller! : String
    # :ditto:
    abstract def controller? : String?
    # :ditto:
    abstract def controller=(value : String?)
    # Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
    abstract def parameters : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def parameters! : ::K8S::Api::Core::V1::TypedLocalObjectReference
    # :ditto:
    abstract def parameters? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def parameters=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
  end

  # IngressClassSpec provides information about the class of an Ingress.
  @[::K8S::Properties(
    controller: {key: "controller", accessor: "controller", kind: "String", nilable: true, default: nil, read_only: false, description: "Controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. [\"acme.io/ingress-controller\". This field is immutable.](\"acme.io/ingress-controller\". This field is immutable.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    parameters: {key: "parameters", accessor: "parameters", kind: "::K8S::Api::Core::V1::TypedLocalObjectReference", nilable: true, default: nil, read_only: false, description: "Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IngressClassSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::IngressClassSpec

    # Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. [["acme.io/ingress-controller". This field is immutable.]("acme.io/ingress-controller". This field is immutable.)](["acme.io/ingress-controller". This field is immutable.]("acme.io/ingress-controller". This field is immutable.))
    def controller : String?
      self.["controller"].as(String?)
    end

    # :ditto:
    def controller! : String
      self.["controller"].as(String?).not_nil!
    end

    # :ditto:
    def controller? : String?
      self.["controller"]?.as(String?)
    end

    # :ditto:
    def controller=(value : String?)
      self.["controller"] = value
    end

    # Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
    def parameters : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["parameters"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def parameters! : ::K8S::Api::Core::V1::TypedLocalObjectReference
      self.["parameters"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?).not_nil!
    end

    # :ditto:
    def parameters? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["parameters"]?.as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def parameters=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
      self.["parameters"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "controller", accessor: "controller", nilable: true, read_only: false, default: nil, kind: String },
        { key: "parameters", accessor: "parameters", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TypedLocalObjectReference },
      ])
end
  end
end
