# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  @[::K8S::Properties(
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_name: {type: String, nilable: false, key: "secretName", getter: false, setter: false},
    secret_namespace: {type: String, nilable: true, key: "secretNamespace", getter: false, setter: false},
    share_name: {type: String, nilable: false, key: "shareName", getter: false, setter: false},
  )]
  class Api::Core::V1::AzureFilePersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # the name of secret that contains Azure Storage Account Name and Key
    @[::JSON::Field(key: "secretName", emit_null: true)]
    @[::YAML::Field(key: "secretName", emit_null: true)]
    property secret_name : String

    # the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
    @[::JSON::Field(key: "secretNamespace", emit_null: false)]
    @[::YAML::Field(key: "secretNamespace", emit_null: false)]
    property secret_namespace : String | Nil

    # Share Name
    @[::JSON::Field(key: "shareName", emit_null: true)]
    @[::YAML::Field(key: "shareName", emit_null: true)]
    property share_name : String

    def initialize(*, @secret_name : String, @share_name : String, @read_only : Bool | Nil = nil, @secret_namespace : String | Nil = nil)
    end
  end
end
