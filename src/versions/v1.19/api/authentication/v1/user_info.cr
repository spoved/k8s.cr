# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::UserInfo; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::UserInfo`.
  module Types::Api::Authentication::V1::UserInfo
    # Any additional information provided by the authenticator.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String)))
    # The names of groups this user is a part of.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String))
    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
    # The name that uniquely identifies this user among all active users.
    abstract def username : String?
    # :ditto:
    abstract def username! : String
    # :ditto:
    abstract def username? : String?
    # :ditto:
    abstract def username=(value : String)
  end

  # UserInfo holds the information about the user needed to implement the user.Info interface.
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Any additional information provided by the authenticator.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "The names of groups this user is a part of.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "The name that uniquely identifies this user among all active users.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authentication::V1::UserInfo < ::K8S::GenericObject
    include ::K8S::Types::Api::Authentication::V1::UserInfo
    k8s_object_accessor("extra", extra : ::Hash(String, ::Array(String)), true, false, "Any additional information provided by the authenticator.")
    k8s_object_accessor("groups", groups : ::Array(String), true, false, "The names of groups this user is a part of.")
    k8s_object_accessor("uid", uid : String, true, false, "A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.")
    k8s_object_accessor("username", username : String, true, false, "The name that uniquely identifies this user among all active users.")

    def initialize(*, extra : ::Hash(String, ::Array(String))? = nil, groups : ::Array(String)? = nil, uid : String? = nil, username : String? = nil)
      super()
      self.["extra"] = extra
      self.["groups"] = groups
      self.["uid"] = uid
      self.["username"] = username
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String))},
      {key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
      {key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
