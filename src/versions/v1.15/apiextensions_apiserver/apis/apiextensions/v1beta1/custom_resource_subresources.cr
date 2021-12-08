# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  @[::K8S::Properties(
    scale: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale, nilable: true, key: "scale", getter: false, setter: false},
    status: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Scale denotes the scale subresource for CustomResources
    @[::JSON::Field(key: "scale", emit_null: false)]
    @[::YAML::Field(key: "scale", emit_null: false)]
    property scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil

    # Status denotes the status subresource for CustomResources
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil

    def initialize(*, @scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil = nil)
    end
  end
end
