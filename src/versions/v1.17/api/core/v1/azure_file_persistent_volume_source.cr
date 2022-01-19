# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::AzureFilePersistentVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::AzureFilePersistentVolumeSource`.
  module Types::Api::Core::V1::AzureFilePersistentVolumeSource
    alias ValueType = ::Bool | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # the name of secret that contains Azure Storage Account Name and Key
    abstract def secret_name : String
    # :ditto:
    abstract def secret_name! : String
    # :ditto:
    abstract def secret_name? : String?
    # :ditto:
    abstract def secret_name=(value : String)
    # the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
    abstract def secret_namespace : String?
    # :ditto:
    abstract def secret_namespace! : String
    # :ditto:
    abstract def secret_namespace? : String?
    # :ditto:
    abstract def secret_namespace=(value : String?)
    # Share Name
    abstract def share_name : String
    # :ditto:
    abstract def share_name! : String
    # :ditto:
    abstract def share_name? : String?
    # :ditto:
    abstract def share_name=(value : String)
  end

  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  @[::K8S::Properties(
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    secret_name: {key: "secretName", accessor: "secret_name", kind: "String", nilable: false, default: nil, read_only: false, description: "the name of secret that contains Azure Storage Account Name and Key"},
    secret_namespace: {key: "secretNamespace", accessor: "secret_namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod"},
    share_name: {key: "shareName", accessor: "share_name", kind: "String", nilable: false, default: nil, read_only: false, description: "Share Name"},
  )]
  class Api::Core::V1::AzureFilePersistentVolumeSource < ::K8S::Types::Api::Core::V1::AzureFilePersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::AzureFilePersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    def read_only : ::Bool?
      self.["readOnly"].as(::Bool?)
    end

    # :ditto:
    def read_only! : ::Bool
      self.["readOnly"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only? : ::Bool?
      self.["readOnly"]?.as(::Bool?)
    end

    # :ditto:
    def read_only=(value : ::Bool?)
      self.["readOnly"] = value
    end

    # the name of secret that contains Azure Storage Account Name and Key
    def secret_name : String
      self.["secretName"].as(String)
    end

    # :ditto:
    def secret_name! : String
      self.["secretName"].as(String).not_nil!
    end

    # :ditto:
    def secret_name? : String?
      self.["secretName"]?.as(String?)
    end

    # :ditto:
    def secret_name=(value : String)
      self.["secretName"] = value
    end

    # the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
    def secret_namespace : String?
      self.["secretNamespace"].as(String?)
    end

    # :ditto:
    def secret_namespace! : String
      self.["secretNamespace"].as(String?).not_nil!
    end

    # :ditto:
    def secret_namespace? : String?
      self.["secretNamespace"]?.as(String?)
    end

    # :ditto:
    def secret_namespace=(value : String?)
      self.["secretNamespace"] = value
    end

    # Share Name
    def share_name : String
      self.["shareName"].as(String)
    end

    # :ditto:
    def share_name! : String
      self.["shareName"].as(String).not_nil!
    end

    # :ditto:
    def share_name? : String?
      self.["shareName"]?.as(String?)
    end

    # :ditto:
    def share_name=(value : String)
      self.["shareName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretName", accessor: "secret_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "secretNamespace", accessor: "secret_namespace", nilable: true, read_only: false, default: nil, kind: String },
        { key: "shareName", accessor: "share_name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
