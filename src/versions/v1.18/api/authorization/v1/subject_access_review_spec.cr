# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SubjectAccessReviewSpec; end

require "./non_resource_attributes"
require "./resource_attributes"

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SubjectAccessReviewSpec`.
  module Types::Api::Authorization::V1::SubjectAccessReviewSpec
    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String)))
    # Groups is the groups you're testing for.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String))
    # NonResourceAttributes describes information for a non-resource access request
    abstract def non_resource_attributes : ::K8S::Api::Authorization::V1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes! : ::K8S::Api::Authorization::V1::NonResourceAttributes
    # :ditto:
    abstract def non_resource_attributes? : ::K8S::Api::Authorization::V1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes=(value : ::K8S::Api::Authorization::V1::NonResourceAttributes)
    # ResourceAuthorizationAttributes describes information for a resource access request
    abstract def resource_attributes : ::K8S::Api::Authorization::V1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes! : ::K8S::Api::Authorization::V1::ResourceAttributes
    # :ditto:
    abstract def resource_attributes? : ::K8S::Api::Authorization::V1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes=(value : ::K8S::Api::Authorization::V1::ResourceAttributes)
    # UID information about the requesting user.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
    # User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String)
  end

  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Groups is the groups you're testing for.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    non_resource_attributes: {key: "nonResourceAttributes", accessor: "non_resource_attributes", kind: "::K8S::Api::Authorization::V1::NonResourceAttributes", nilable: true, default: nil, read_only: false, description: "NonResourceAttributes describes information for a non-resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_attributes: {key: "resourceAttributes", accessor: "resource_attributes", kind: "::K8S::Api::Authorization::V1::ResourceAttributes", nilable: true, default: nil, read_only: false, description: "ResourceAuthorizationAttributes describes information for a resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID information about the requesting user.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::SubjectAccessReviewSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::SubjectAccessReviewSpec
    k8s_object_accessor("extra", extra : ::Hash(String, ::Array(String)), true, false, "Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.")
    k8s_object_accessor("groups", groups : ::Array(String), true, false, "Groups is the groups you're testing for.")
    k8s_object_accessor("nonResourceAttributes", non_resource_attributes : ::K8S::Api::Authorization::V1::NonResourceAttributes, true, false, "NonResourceAttributes describes information for a non-resource access request")
    k8s_object_accessor("resourceAttributes", resource_attributes : ::K8S::Api::Authorization::V1::ResourceAttributes, true, false, "ResourceAuthorizationAttributes describes information for a resource access request")
    k8s_object_accessor("uid", uid : String, true, false, "UID information about the requesting user.")
    k8s_object_accessor("user", user : String, true, false, "User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups")

    def initialize(*, extra : ::Hash(String, ::Array(String))? = nil, groups : ::Array(String)? = nil, non_resource_attributes : ::K8S::Api::Authorization::V1::NonResourceAttributes? = nil, resource_attributes : ::K8S::Api::Authorization::V1::ResourceAttributes? = nil, uid : String? = nil, user : String? = nil)
      super()
      self.["extra"] = extra
      self.["groups"] = groups
      self.["nonResourceAttributes"] = non_resource_attributes
      self.["resourceAttributes"] = resource_attributes
      self.["uid"] = uid
      self.["user"] = user
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String))},
      {key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "nonResourceAttributes", accessor: "non_resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1::NonResourceAttributes},
      {key: "resourceAttributes", accessor: "resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1::ResourceAttributes},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
      {key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
