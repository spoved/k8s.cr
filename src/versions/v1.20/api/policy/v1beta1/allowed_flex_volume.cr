# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::AllowedFlexVolume; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::AllowedFlexVolume`.
  module Types::Api::Policy::V1beta1::AllowedFlexVolume
    # driver is the name of the Flexvolume driver.
    abstract def driver : String
    # :ditto:
    abstract def driver! : String
    # :ditto:
    abstract def driver? : String?
    # :ditto:
    abstract def driver=(value : String)
  end

  # AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
  @[::K8S::Properties(
    driver: {key: "driver", accessor: "driver", kind: "String", nilable: false, default: nil, read_only: false, description: "driver is the name of the Flexvolume driver.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::AllowedFlexVolume < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::AllowedFlexVolume

    # driver is the name of the Flexvolume driver.
    def driver : String
      self.["driver"].as(String)
    end

    # :ditto:
    def driver! : String
      self.["driver"].as(String).not_nil!
    end

    # :ditto:
    def driver? : String?
      self.["driver"]?.as(String?)
    end

    # :ditto:
    def driver=(value : String)
      self.["driver"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "driver", accessor: "driver", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
