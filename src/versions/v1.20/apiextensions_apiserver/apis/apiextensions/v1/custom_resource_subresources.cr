# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  @[::K8S::Properties(
    scale: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale, nilable: true, key: "scale", getter: false, setter: false},
    status: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # scale indicates the custom resource should serve a [`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.)
    @[::JSON::Field(key: "scale", emit_null: false)]
    @[::YAML::Field(key: "scale", emit_null: false)]
    property scale : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale | Nil

    # status indicates the custom resource should serve a [`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.)
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus | Nil

    def initialize(*, @scale : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus | Nil = nil)
    end
  end
end
