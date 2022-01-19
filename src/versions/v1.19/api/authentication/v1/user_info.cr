# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::UserInfo; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::UserInfo`.
  module Types::Api::Authentication::V1::UserInfo
    alias ValueType = ::Hash(String, ::Array(String)) | ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Any additional information provided by the authenticator.
    abstract def extra : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra! : ::Hash(String, ::Array(String))
    # :ditto:
    abstract def extra? : ::Hash(String, ::Array(String))?
    # :ditto:
    abstract def extra=(value : ::Hash(String, ::Array(String))?)
    # The names of groups this user is a part of.
    abstract def groups : ::Array(String)?
    # :ditto:
    abstract def groups! : ::Array(String)
    # :ditto:
    abstract def groups? : ::Array(String)?
    # :ditto:
    abstract def groups=(value : ::Array(String)?)
    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
    # The name that uniquely identifies this user among all active users.
    abstract def username : String?
    # :ditto:
    abstract def username! : String
    # :ditto:
    abstract def username? : String?
    # :ditto:
    abstract def username=(value : String?)
  end

  # UserInfo holds the information about the user needed to implement the user.Info interface.
  @[::K8S::Properties(
    extra: {key: "extra", accessor: "extra", kind: "::Hash(String, ::Array(String))", nilable: true, default: nil, read_only: false, description: "Any additional information provided by the authenticator."},
    groups: {key: "groups", accessor: "groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "The names of groups this user is a part of."},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs."},
    username: {key: "username", accessor: "username", kind: "String", nilable: true, default: nil, read_only: false, description: "The name that uniquely identifies this user among all active users."},
  )]
  class Api::Authentication::V1::UserInfo < ::K8S::Types::Api::Authentication::V1::UserInfo::Instance
    include ::K8S::Types::Api::Authentication::V1::UserInfo
    include ::K8S::Kubernetes::Object

    # Any additional information provided by the authenticator.
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

    # The names of groups this user is a part of.
    def groups : ::Array(String)?
      self.["groups"].as(::Array(String)?)
    end

    # :ditto:
    def groups! : ::Array(String)
      self.["groups"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def groups? : ::Array(String)?
      self.["groups"]?.as(::Array(String)?)
    end

    # :ditto:
    def groups=(value : ::Array(String)?)
      self.["groups"] = value
    end

    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
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

    # The name that uniquely identifies this user among all active users.
    def username : String?
      self.["username"].as(String?)
    end

    # :ditto:
    def username! : String
      self.["username"].as(String?).not_nil!
    end

    # :ditto:
    def username? : String?
      self.["username"]?.as(String?)
    end

    # :ditto:
    def username=(value : String?)
      self.["username"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "extra", accessor: "extra", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Array(String)) },
        { key: "groups", accessor: "groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
        { key: "username", accessor: "username", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
