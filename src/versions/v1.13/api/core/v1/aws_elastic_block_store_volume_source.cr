# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::AWSElasticBlockStoreVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::AWSElasticBlockStoreVolumeSource`.
  module Types::Api::Core::V1::AWSElasticBlockStoreVolumeSource
    alias ValueType = String | Int32 | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [[/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).)]([/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).))
    abstract def partition : Int32?
    # :ditto:
    abstract def partition! : Int32
    # :ditto:
    abstract def partition? : Int32?
    # :ditto:
    abstract def partition=(value : Int32?)
    # Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    abstract def volume_id : String
    # :ditto:
    abstract def volume_id! : String
    # :ditto:
    abstract def volume_id? : String?
    # :ditto:
    abstract def volume_id=(value : String)
  end

  # Represents a Persistent Disk resource in AWS.
  #
  # An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as [read/write once. AWS EBS volumes support ownership management and SELinux relabeling.](read/write once. AWS EBS volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    partition: {key: "partition", accessor: "partition", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [/dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).](/dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).)"},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify \"true\" to force and set the ReadOnly property in VolumeMounts to \"true\". If omitted, the default is \"false\". More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    volume_id: {key: "volumeID", accessor: "volume_id", kind: "String", nilable: false, default: nil, read_only: false, description: "Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
  )]
  class Api::Core::V1::AWSElasticBlockStoreVolumeSource < ::K8S::Types::Api::Core::V1::AWSElasticBlockStoreVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::AWSElasticBlockStoreVolumeSource
    include ::K8S::Kubernetes::Object

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    def fs_type : String?
      self.["fsType"].as(String?)
    end

    # :ditto:
    def fs_type! : String
      self.["fsType"].as(String?).not_nil!
    end

    # :ditto:
    def fs_type? : String?
      self.["fsType"]?.as(String?)
    end

    # :ditto:
    def fs_type=(value : String?)
      self.["fsType"] = value
    end

    # The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [[/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).)]([/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).](/dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).))
    def partition : Int32?
      self.["partition"].as(Int32?)
    end

    # :ditto:
    def partition! : Int32
      self.["partition"].as(Int32?).not_nil!
    end

    # :ditto:
    def partition? : Int32?
      self.["partition"]?.as(Int32?)
    end

    # :ditto:
    def partition=(value : Int32?)
      self.["partition"] = value
    end

    # Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
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

    # Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    def volume_id : String
      self.["volumeID"].as(String)
    end

    # :ditto:
    def volume_id! : String
      self.["volumeID"].as(String).not_nil!
    end

    # :ditto:
    def volume_id? : String?
      self.["volumeID"]?.as(String?)
    end

    # :ditto:
    def volume_id=(value : String)
      self.["volumeID"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "partition", accessor: "partition", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "volumeID", accessor: "volume_id", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
