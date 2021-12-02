# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
  @[::K8S::GroupVersionKind(group: "extensions", kind: "ThirdPartyResource", version: "v1beta1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/extensions/v1beta1/thirdpartyresources", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/extensions/v1beta1/thirdpartyresources", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/extensions/v1beta1/thirdpartyresources", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/extensions/v1beta1/thirdpartyresources/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/extensions/v1beta1/thirdpartyresources/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/extensions/v1beta1/thirdpartyresources/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/extensions/v1beta1/thirdpartyresources/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource < ::K8S::Kubernetes::Resource
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "ThirdPartyResource"
    # Description is the description of this object.
    property description : String | Nil

    # Standard object metadata
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Versions are versions for this third party object
    property versions : Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ThirdPartyResource", key: "kind", setter: false},
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: "versions", getter: false, setter: false},
    }, true)

    def initialize(*, @description : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @versions : Array | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias ThirdPartyResource = ::K8S::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  end
end
