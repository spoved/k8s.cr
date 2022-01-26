# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1beta1::SubjectAccessReviewSpec; end

require "./non_resource_attributes"
require "./resource_attributes"

module K8S
  # Namespace holding the types for `Api::Authorization::V1beta1::SubjectAccessReviewSpec`.
  module Types::Api::Authorization::V1beta1::SubjectAccessReviewSpec
    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String))?)
    # Groups is the groups you're testing for.
    abstract def group : ::Array(String)?
    # :ditto:
    abstract def group! : ::Array(String)
    # :ditto:
    abstract def group? : ::Array(String)?
    # :ditto:
    abstract def group=(value : ::Array(String)?)
    # NonResourceAttributes describes information for a non-resource access request
    abstract def non_resource_attributes : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes! : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes
    # :ditto:
    abstract def non_resource_attributes? : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?
    # :ditto:
    abstract def non_resource_attributes=(value : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?)
    # ResourceAuthorizationAttributes describes information for a resource access request
    abstract def resource_attributes : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes! : ::K8S::Api::Authorization::V1beta1::ResourceAttributes
    # :ditto:
    abstract def resource_attributes? : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?
    # :ditto:
    abstract def resource_attributes=(value : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?)
    # UID information about the requesting user.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
    # User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String?)
  end

  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Groups is the groups you're testing for.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    non_resource_attributes: {key: "nonResourceAttributes", accessor: "non_resource_attributes", kind: "::K8S::Api::Authorization::V1beta1::NonResourceAttributes", nilable: true, default: nil, read_only: false, description: "NonResourceAttributes describes information for a non-resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_attributes: {key: "resourceAttributes", accessor: "resource_attributes", kind: "::K8S::Api::Authorization::V1beta1::ResourceAttributes", nilable: true, default: nil, read_only: false, description: "ResourceAuthorizationAttributes describes information for a resource access request", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID information about the requesting user.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "User is the user you're testing for. If you specify \"User\" but not \"Group\", then is it interpreted as \"What if User were not a member of any groups", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1beta1::SubjectAccessReviewSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1beta1::SubjectAccessReviewSpec

    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    def extra : ::Hash(String, ::Array(String))?
      self.["extra"].as(::Hash(String, ::Array(String))?)
    end

    # :ditto:
    def extra! : ::Hash(String, ::Array(String))
      self.["extra"].as(::Hash(String, ::Array(String))?).not_nil!
    end

    # :ditto:
    def extra? : ::Hash(String, ::Array(String))?
      self.["extra"]?.as(::Hash(String, ::Array(String))?)
    end

    # :ditto:
    def extra=(value : ::Hash(String, ::Array(String))?)
      self.["extra"] = value
    end

    # Groups is the groups you're testing for.
    def group : ::Array(String)?
      self.["group"].as(::Array(String)?)
    end

    # :ditto:
    def group! : ::Array(String)
      self.["group"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def group? : ::Array(String)?
      self.["group"]?.as(::Array(String)?)
    end

    # :ditto:
    def group=(value : ::Array(String)?)
      self.["group"] = value
    end

    # NonResourceAttributes describes information for a non-resource access request
    def non_resource_attributes : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?
      self.["nonResourceAttributes"].as(::K8S::Api::Authorization::V1beta1::NonResourceAttributes?)
    end

    # :ditto:
    def non_resource_attributes! : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes
      self.["nonResourceAttributes"].as(::K8S::Api::Authorization::V1beta1::NonResourceAttributes?).not_nil!
    end

    # :ditto:
    def non_resource_attributes? : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?
      self.["nonResourceAttributes"]?.as(::K8S::Api::Authorization::V1beta1::NonResourceAttributes?)
    end

    # :ditto:
    def non_resource_attributes=(value : ::K8S::Api::Authorization::V1beta1::NonResourceAttributes?)
      self.["nonResourceAttributes"] = value
    end

    # ResourceAuthorizationAttributes describes information for a resource access request
    def resource_attributes : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?
      self.["resourceAttributes"].as(::K8S::Api::Authorization::V1beta1::ResourceAttributes?)
    end

    # :ditto:
    def resource_attributes! : ::K8S::Api::Authorization::V1beta1::ResourceAttributes
      self.["resourceAttributes"].as(::K8S::Api::Authorization::V1beta1::ResourceAttributes?).not_nil!
    end

    # :ditto:
    def resource_attributes? : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?
      self.["resourceAttributes"]?.as(::K8S::Api::Authorization::V1beta1::ResourceAttributes?)
    end

    # :ditto:
    def resource_attributes=(value : ::K8S::Api::Authorization::V1beta1::ResourceAttributes?)
      self.["resourceAttributes"] = value
    end

    # UID information about the requesting user.
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    # User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
    def user : String?
      self.["user"].as(String?)
    end

    # :ditto:
    def user! : String
      self.["user"].as(String?).not_nil!
    end

    # :ditto:
    def user? : String?
      self.["user"]?.as(String?)
    end

    # :ditto:
    def user=(value : String?)
      self.["user"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String)) },
        { key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "nonResourceAttributes", accessor: "non_resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1beta1::NonResourceAttributes },
        { key: "resourceAttributes", accessor: "resource_attributes", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authorization::V1beta1::ResourceAttributes },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
