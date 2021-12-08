# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    medium: {type: String, nilable: true, key: "medium", getter: false, setter: false},
    size_limit: {type: Int32 | String, nilable: true, key: "sizeLimit", getter: false, setter: false},
  )]
  class Api::Core::V1::EmptyDirVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)
    @[::JSON::Field(key: "medium", emit_null: false)]
    @[::YAML::Field(key: "medium", emit_null: false)]
    property medium : String | Nil

    # Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)
    @[::JSON::Field(key: "sizeLimit", emit_null: false)]
    @[::YAML::Field(key: "sizeLimit", emit_null: false)]
    property size_limit : Int32 | String | Nil

    def initialize(*, @medium : String | Nil = nil, @size_limit : Int32 | String | Nil = nil)
    end
  end
end
