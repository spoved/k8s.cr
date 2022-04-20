# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./local_object_reference"
require "./object_reference"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ServiceAccount",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "automount_service_account_token", kind: ::Bool, key: "automountServiceAccountToken", nilable: true, read_only: false, description: "AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level."},
    {name: "image_pull_secrets", kind: ::Array(::K8S::Api::Core::V1::LocalObjectReference), key: "imagePullSecrets", nilable: true, read_only: false, description: "ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)"},
    {name: "secrets", kind: ::Array(::K8S::Api::Core::V1::ObjectReference), key: "secrets", nilable: true, read_only: false, description: "Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)"},

  ],
  description: "ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets",
)
