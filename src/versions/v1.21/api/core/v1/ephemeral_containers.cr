# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./ephemeral_container"

::K8S::Kubernetes::Resource.define_resource("", "v1", "EphemeralContainers",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "ephemeral_containers", kind: ::Array(::K8S::Api::Core::V1::EphemeralContainer), key: "ephemeralContainers", nilable: false, read_only: false, description: "A list of ephemeral containers associated with this pod. New ephemeral containers may be appended to this list, but existing ephemeral containers may not be removed or modified."},

  ],
  description: "A list of ephemeral containers used with the Pod ephemeralcontainers subresource.",
)
