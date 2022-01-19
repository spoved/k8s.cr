# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::UserSubject; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::UserSubject`.
  module Types::Api::Flowcontrol::V1alpha1::UserSubject
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `name` is the username that matches, or "*" to match all usernames. Required.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # UserSubject holds detailed information for user-kind subject.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "`name` is the username that matches, or \"*\" to match all usernames. Required."},
  )]
  class Api::Flowcontrol::V1alpha1::UserSubject < ::K8S::Types::Api::Flowcontrol::V1alpha1::UserSubject::Instance
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::UserSubject
    include ::K8S::Kubernetes::Object

    # `name` is the username that matches, or "*" to match all usernames. Required.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
