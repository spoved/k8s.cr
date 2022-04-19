# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "A human-readable message indicating details about why the volume is in this state."},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)\n\nPossible enum values:\n - `\"Available\"` used for PersistentVolumes that are not yet bound Available volumes are held by the binder and matched to PersistentVolumeClaims\n - `\"Bound\"` used for PersistentVolumes that are bound\n - `\"Failed\"` used for PersistentVolumes that failed to be correctly recycled or deleted after being released from a claim\n - `\"Pending\"` used for PersistentVolumes that are not available\n - `\"Released\"` used for PersistentVolumes where the bound PersistentVolumeClaim was deleted released volumes must be recycled before becoming available again this phase is used by the persistent volume claim binder to signal to another process to reclaim the resource"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI."},

  ]
)
