# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecretKeySelector; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SecretKeySelector`.
  module Types::Api::Core::V1::SecretKeySelector
    alias ValueType = String | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The key of the secret to select from.  Must be a valid secret key.
    abstract def key : String
    # :ditto:
    abstract def key! : String
    # :ditto:
    abstract def key? : String?
    # :ditto:
    abstract def key=(value : String)
    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Specify whether the Secret or it's key must be defined
    abstract def optional : ::Bool?
    # :ditto:
    abstract def optional! : ::Bool
    # :ditto:
    abstract def optional? : ::Bool?
    # :ditto:
    abstract def optional=(value : ::Bool?)
  end

  # SecretKeySelector selects a key of a Secret.
  @[::K8S::Properties(
    key: {key: "key", accessor: "key", kind: "String", nilable: false, default: nil, read_only: false, description: "The key of the secret to select from.  Must be a valid secret key."},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    optional: {key: "optional", accessor: "optional", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specify whether the Secret or it's key must be defined"},
  )]
  class Api::Core::V1::SecretKeySelector < ::K8S::Types::Api::Core::V1::SecretKeySelector::Instance
    include ::K8S::Types::Api::Core::V1::SecretKeySelector
    include ::K8S::Kubernetes::Object

    # The key of the secret to select from.  Must be a valid secret key.
    def key : String
      self.["key"].as(String)
    end

    # :ditto:
    def key! : String
      self.["key"].as(String).not_nil!
    end

    # :ditto:
    def key? : String?
      self.["key"]?.as(String?)
    end

    # :ditto:
    def key=(value : String)
      self.["key"] = value
    end

    # Name of the referent. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # Specify whether the Secret or it's key must be defined
    def optional : ::Bool?
      self.["optional"].as(::Bool?)
    end

    # :ditto:
    def optional! : ::Bool
      self.["optional"].as(::Bool?).not_nil!
    end

    # :ditto:
    def optional? : ::Bool?
      self.["optional"]?.as(::Bool?)
    end

    # :ditto:
    def optional=(value : ::Bool?)
      self.["optional"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "key", accessor: "key", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "optional", accessor: "optional", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
