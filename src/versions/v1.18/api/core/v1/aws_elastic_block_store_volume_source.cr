# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AWSElasticBlockStoreVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    {name: "partition", kind: Int32, key: "partition", nilable: true, read_only: false, description: "The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume [/dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).](/dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Specify \"true\" to force and set the ReadOnly property in VolumeMounts to \"true\". If omitted, the default is \"false\". More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    {name: "volume_id", kind: String, key: "volumeID", nilable: false, read_only: false, description: "Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},

  ]
)
