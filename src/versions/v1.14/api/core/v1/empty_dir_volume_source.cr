# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EmptyDirVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EmptyDirVolumeSource`.
  module Types::Api::Core::V1::EmptyDirVolumeSource
    alias ValueType = String | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)](https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir))
    abstract def medium : String?
    # :ditto:
    abstract def medium! : String
    # :ditto:
    abstract def medium? : String?
    # :ditto:
    abstract def medium=(value : String?)
    # Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: [[http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)](http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir))
    abstract def size_limit : ::Int32 | ::String?
    # :ditto:
    abstract def size_limit! : ::Int32 | ::String
    # :ditto:
    abstract def size_limit? : ::Int32 | ::String?
    # :ditto:
    abstract def size_limit=(value : ::Int32 | ::String?)
  end

  # Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    medium: {key: "medium", accessor: "medium", kind: "String", nilable: true, default: nil, read_only: false, description: "What type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    size_limit: {key: "sizeLimit", accessor: "size_limit", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EmptyDirVolumeSource < ::K8S::Types::Api::Core::V1::EmptyDirVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::EmptyDirVolumeSource
    include ::K8S::Kubernetes::Object

    # What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)](https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir))
    def medium : String?
      self.["medium"].as(String?)
    end

    # :ditto:
    def medium! : String
      self.["medium"].as(String?).not_nil!
    end

    # :ditto:
    def medium? : String?
      self.["medium"]?.as(String?)
    end

    # :ditto:
    def medium=(value : String?)
      self.["medium"] = value
    end

    # Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: [[http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)](http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir))
    def size_limit : ::Int32 | ::String?
      self.["sizeLimit"].as(::Int32 | ::String?)
    end

    # :ditto:
    def size_limit! : ::Int32 | ::String
      self.["sizeLimit"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def size_limit? : ::Int32 | ::String?
      self.["sizeLimit"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def size_limit=(value : ::Int32 | ::String?)
      self.["sizeLimit"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "medium", accessor: "medium", nilable: true, read_only: false, default: nil, kind: String },
        { key: "sizeLimit", accessor: "size_limit", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
