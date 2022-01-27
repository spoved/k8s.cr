# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::Subject; end

require "./group_subject"
require "./service_account_subject"
require "./user_subject"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::Subject`.
  module Types::Api::Flowcontrol::V1beta1::Subject
    # `group` matches based on user group name.
    abstract def group : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject?
    # :ditto:
    abstract def group! : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject
    # :ditto:
    abstract def group? : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject?
    # :ditto:
    abstract def group=(value : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject)
    # `kind` indicates which one of the other fields is non-empty. Required
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # `serviceAccount` matches ServiceAccounts.
    abstract def service_account : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject?
    # :ditto:
    abstract def service_account! : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject
    # :ditto:
    abstract def service_account? : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject?
    # :ditto:
    abstract def service_account=(value : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject)
    # `user` matches based on username.
    abstract def user : ::K8S::Api::Flowcontrol::V1beta1::UserSubject?
    # :ditto:
    abstract def user! : ::K8S::Api::Flowcontrol::V1beta1::UserSubject
    # :ditto:
    abstract def user? : ::K8S::Api::Flowcontrol::V1beta1::UserSubject?
    # :ditto:
    abstract def user=(value : ::K8S::Api::Flowcontrol::V1beta1::UserSubject)
  end

  # Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
  @[::K8S::Properties(
    group: {key: "group", accessor: "group", kind: "::K8S::Api::Flowcontrol::V1beta1::GroupSubject", nilable: true, default: nil, read_only: false, description: "`group` matches based on user group name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "`kind` indicates which one of the other fields is non-empty. Required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account: {key: "serviceAccount", accessor: "service_account", kind: "::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject", nilable: true, default: nil, read_only: false, description: "`serviceAccount` matches ServiceAccounts.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "::K8S::Api::Flowcontrol::V1beta1::UserSubject", nilable: true, default: nil, read_only: false, description: "`user` matches based on username.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::Subject < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1beta1::Subject
    k8s_object_accessor("group", group : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject, true, false, "`group` matches based on user group name.")
    k8s_object_accessor("kind", kind : String, false, false, "`kind` indicates which one of the other fields is non-empty. Required")
    k8s_object_accessor("serviceAccount", service_account : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject, true, false, "`serviceAccount` matches ServiceAccounts.")
    k8s_object_accessor("user", user : ::K8S::Api::Flowcontrol::V1beta1::UserSubject, true, false, "`user` matches based on username.")

    def initialize(*, group : ::K8S::Api::Flowcontrol::V1beta1::GroupSubject? = nil, kind : String? = nil, service_account : ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject? = nil, user : ::K8S::Api::Flowcontrol::V1beta1::UserSubject? = nil)
      super()
      self.["group"] = group
      self.["kind"] = kind
      self.["serviceAccount"] = service_account
      self.["user"] = user
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1beta1::GroupSubject},
      {key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String},
      {key: "serviceAccount", accessor: "service_account", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1beta1::ServiceAccountSubject},
      {key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1beta1::UserSubject},
    ])
  end
end
