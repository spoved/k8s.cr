# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
  class Apimachinery::Apis::Meta::V1::ListMeta
    # continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.
    property continue : String | Nil

    # String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)
    property resource_version : String | Nil

    # selfLink is a URL representing this object. Populated by the system. Read-only.
    property self_link : String | Nil

    ::YAML.mapping({
      continue:         {type: String, nilable: true, key: "continue", getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      self_link:        {type: String, nilable: true, key: "selfLink", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      continue:         {type: String, nilable: true, key: "continue", getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      self_link:        {type: String, nilable: true, key: "selfLink", getter: false, setter: false},
    }, true)

    def initialize(*, @continue : String | Nil = nil, @resource_version : String | Nil = nil, @self_link : String | Nil = nil)
    end
  end
end
