# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
  class Kubernetes::Api::V1::ServiceAccount
    getter api_version : String = "v1"
    getter kind : String = "ServiceAccount"
    # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
    property automount_service_account_token : Bool | Nil

    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret](http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret)
    property image_pull_secrets : Array(Kubernetes::Api::V1::LocalObjectReference) | Nil

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [http://kubernetes.io/docs/user-guide/secrets](http://kubernetes.io/docs/user-guide/secrets)
    property secrets : Array(Kubernetes::Api::V1::ObjectReference) | Nil

    ::YAML.mapping({
      api_version:                     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:                            {type: String, default: "ServiceAccount", key: "kind", setter: false},
      automount_service_account_token: {type: Bool, nilable: true, key: "automountServiceAccountToken", getter: false, setter: false},
      image_pull_secrets:              {type: Array(Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: "imagePullSecrets", getter: false, setter: false},
      metadata:                        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      secrets:                         {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: "secrets", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:                     {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:                            {type: String, default: "ServiceAccount", key: "kind", setter: false},
      automount_service_account_token: {type: Bool, nilable: true, key: "automountServiceAccountToken", getter: false, setter: false},
      image_pull_secrets:              {type: Array(Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: "imagePullSecrets", getter: false, setter: false},
      metadata:                        {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      secrets:                         {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: "secrets", getter: false, setter: false},
    }, true)

    def initialize(*, @automount_service_account_token : Bool | Nil = nil, @image_pull_secrets : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @secrets : Array | Nil = nil)
    end
  end

  module Resources::V1
    alias ServiceAccount = ::K8S::Kubernetes::Api::V1::ServiceAccount
  end
end
