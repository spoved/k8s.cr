# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::GroupSubject; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::GroupSubject`.
  module Types::Api::Flowcontrol::V1alpha1::GroupSubject
    # name is the user group that matches, or "*" to match all user groups. See [[https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # GroupSubject holds detailed information for group-kind subject.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the user group that matches, or \"*\" to match all user groups. See [https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::GroupSubject < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::GroupSubject
    k8s_object_accessor("name", name : String, false, false, "name is the user group that matches, or \"*\" to match all user groups. See [https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)")

    def initialize(*, name : String? = nil)
      super()
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
