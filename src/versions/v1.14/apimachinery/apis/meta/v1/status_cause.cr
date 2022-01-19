# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::StatusCause; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::StatusCause`.
  module Types::Apimachinery::Apis::Meta::V1::StatusCause
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
    #
    # Examples:
    #   "name" - the field "name" on the current resource
    #   "items[0].name" - the field "name" on the first array entry in "items"
    abstract def field : String?
    # :ditto:
    abstract def field! : String
    # :ditto:
    abstract def field? : String?
    # :ditto:
    abstract def field=(value : String?)
    # A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # A machine-readable description of the cause of the error. If this value is empty there is no information available.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
  end

  # StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
  @[::K8S::Properties(
    field: {key: "field", accessor: "field", kind: "String", nilable: true, default: nil, read_only: false, description: "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\""},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable description of the cause of the error.  This field may be presented as-is to a reader."},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "A machine-readable description of the cause of the error. If this value is empty there is no information available."},
  )]
  class Apimachinery::Apis::Meta::V1::StatusCause < ::K8S::Types::Apimachinery::Apis::Meta::V1::StatusCause::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::StatusCause
    include ::K8S::Kubernetes::Object

    # The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
    #
    # Examples:
    #   "name" - the field "name" on the current resource
    #   "items[0].name" - the field "name" on the first array entry in "items"
    def field : String?
      self.["field"].as(String?)
    end

    # :ditto:
    def field! : String
      self.["field"].as(String?).not_nil!
    end

    # :ditto:
    def field? : String?
      self.["field"]?.as(String?)
    end

    # :ditto:
    def field=(value : String?)
      self.["field"] = value
    end

    # A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # A machine-readable description of the cause of the error. If this value is empty there is no information available.
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "field", accessor: "field", nilable: true, read_only: false, default: nil, kind: String },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
