# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("StatefulSetPersistentVolumeClaimRetentionPolicy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "when_deleted", kind: String, key: "whenDeleted", nilable: true, read_only: false, description: "WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted."},
    {name: "when_scaled", kind: String, key: "whenScaled", nilable: true, read_only: false, description: "WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted."},

  ]
)
