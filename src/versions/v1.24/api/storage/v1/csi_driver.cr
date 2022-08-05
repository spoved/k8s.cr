# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./csi_driver_spec"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "CSIDriver",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Storage::V1::CSIDriverSpec, key: "spec", nilable: false, read_only: false, description: "Specification of the CSI Driver."},

  ],
  description: "CSIDriver captures information about a Container Storage Interface (CSI) volume driver deployed on the cluster. Kubernetes attach detach controller uses this object to determine whether attach is required. Kubelet uses this object to determine whether pod information needs to be passed on mount. CSIDriver objects are non-namespaced.",
  versions: [{group: "storage.k8s.io", kind: "CSIDriver", version: "v1"}],
)
