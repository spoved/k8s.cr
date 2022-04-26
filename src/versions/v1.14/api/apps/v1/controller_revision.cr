# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../../apimachinery/runtime/raw_extension"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "ControllerRevision",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "data", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "data", nilable: true, read_only: false, description: "Data is the serialized representation of the state."},
    {name: "revision", kind: Int32, key: "revision", nilable: false, read_only: false, description: "Revision indicates the revision of the state represented by Data."},

  ],
  description: "ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.",
  versions: [{group: "apps", kind: "ControllerRevision", version: "v1"}],
)
