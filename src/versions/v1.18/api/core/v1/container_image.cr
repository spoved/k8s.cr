# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerImage; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerImage`.
  module Types::Api::Core::V1::ContainerImage
    # Names by which this image is known. e.g. [[["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"])]([["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]))
    abstract def names : ::Array(String)
    # :ditto:
    abstract def names! : ::Array(String)
    # :ditto:
    abstract def names? : ::Array(String)?
    # :ditto:
    abstract def names=(value : ::Array(String))
    # The size of the image in bytes.
    abstract def size_bytes : Int32?
    # :ditto:
    abstract def size_bytes! : Int32
    # :ditto:
    abstract def size_bytes? : Int32?
    # :ditto:
    abstract def size_bytes=(value : Int32?)
  end

  # Describe a container image
  @[::K8S::Properties(
    names: {key: "names", accessor: "names", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Names by which this image is known. e.g. [[\"k8s.gcr.io/hyperkube:v1.0.7\", \"dockerhub.io/google_containers/hyperkube:v1.0.7\"]]([\"k8s.gcr.io/hyperkube:v1.0.7\", \"dockerhub.io/google_containers/hyperkube:v1.0.7\"])", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    size_bytes: {key: "sizeBytes", accessor: "size_bytes", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The size of the image in bytes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerImage < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerImage

    # Names by which this image is known. e.g. [[["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"])]([["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]))
    def names : ::Array(String)
      self.["names"].as(::Array(String))
    end

    # :ditto:
    def names! : ::Array(String)
      self.["names"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def names? : ::Array(String)?
      self.["names"]?.as(::Array(String)?)
    end

    # :ditto:
    def names=(value : ::Array(String))
      self.["names"] = value
    end

    # The size of the image in bytes.
    def size_bytes : Int32?
      self.["sizeBytes"].as(Int32?)
    end

    # :ditto:
    def size_bytes! : Int32
      self.["sizeBytes"].as(Int32?).not_nil!
    end

    # :ditto:
    def size_bytes? : Int32?
      self.["sizeBytes"]?.as(Int32?)
    end

    # :ditto:
    def size_bytes=(value : Int32?)
      self.["sizeBytes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "names", accessor: "names", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "sizeBytes", accessor: "size_bytes", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
