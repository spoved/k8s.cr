# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  class Kubernetes::Api::V1::AzureFileVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool | Nil

    # the name of secret that contains Azure Storage Account Name and Key
    property secret_name : String

    # Share Name
    property share_name : String

    ::YAML.mapping({
      read_only:   {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_name: {type: String, nilable: false, key: "secretName", getter: false, setter: false},
      share_name:  {type: String, nilable: false, key: "shareName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      read_only:   {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_name: {type: String, nilable: false, key: "secretName", getter: false, setter: false},
      share_name:  {type: String, nilable: false, key: "shareName", getter: false, setter: false},
    }, true)

    def initialize(*, @secret_name : String, @share_name : String, @read_only : Bool | Nil = nil)
    end
  end
end
