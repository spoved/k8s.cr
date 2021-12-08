# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "secretRef", getter: false, setter: false},
    volume_id: {type: String, nilable: false, key: "volumeID", getter: false, setter: false},
  )]
  class Api::Core::V1::CinderPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # Optional: points to a secret object containing parameters used to connect to OpenStack.
    @[::JSON::Field(key: "secretRef", emit_null: false)]
    @[::YAML::Field(key: "secretRef", emit_null: false)]
    property secret_ref : Api::Core::V1::SecretReference | Nil

    # volume id used to identify the volume in cinder More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "volumeID", emit_null: true)]
    @[::YAML::Field(key: "volumeID", emit_null: true)]
    property volume_id : String

    def initialize(*, @volume_id : String, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::SecretReference | Nil = nil)
    end
  end
end
