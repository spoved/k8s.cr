# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # APIService represents a server for a particular GroupVersion. Name must be "version.group".
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/apiregistration.k8s.io/v1beta1/apiservices/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class KubeAggregator::Apis::Apiregistration::V1beta1::APIService < ::K8S::Kubernetes::Resource
    getter api_version : String = "apiregistration/v1beta1"
    getter kind : String = "APIService"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec contains information for locating and communicating with a server
    property spec : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec | Nil

    # Status contains derived information about an API server
    property status : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apiregistration/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "APIService", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiregistration/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "APIService", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec | Nil = nil, @status : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus | Nil = nil)
    end
  end

  module Resources::Apiregistration::V1beta1
    alias APIService = ::K8S::KubeAggregator::Apis::Apiregistration::V1beta1::APIService
  end
end
