# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::HTTPIngressRuleValue; end

require "./http_ingress_path"

module K8S
  # Namespace holding the types for `Api::Networking::V1::HTTPIngressRuleValue`.
  module Types::Api::Networking::V1::HTTPIngressRuleValue
    alias ValueType = ::Array(::K8S::Api::Networking::V1::HTTPIngressPath) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A collection of paths that map requests to backends.
    abstract def paths : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)
    # :ditto:
    abstract def paths! : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)
    # :ditto:
    abstract def paths? : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)?
    # :ditto:
    abstract def paths=(value : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath))
  end

  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  @[::K8S::Properties(
    paths: {key: "paths", accessor: "paths", kind: "::Array(::K8S::Api::Networking::V1::HTTPIngressPath)", nilable: false, default: nil, read_only: false, description: "A collection of paths that map requests to backends."},
  )]
  class Api::Networking::V1::HTTPIngressRuleValue < ::K8S::Types::Api::Networking::V1::HTTPIngressRuleValue::Instance
    include ::K8S::Types::Api::Networking::V1::HTTPIngressRuleValue
    include ::K8S::Kubernetes::Object

    # A collection of paths that map requests to backends.
    def paths : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)
      self.["paths"].as(::Array(::K8S::Api::Networking::V1::HTTPIngressPath))
    end

    # :ditto:
    def paths! : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)
      self.["paths"].as(::Array(::K8S::Api::Networking::V1::HTTPIngressPath)).not_nil!
    end

    # :ditto:
    def paths? : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)?
      self.["paths"]?.as(::Array(::K8S::Api::Networking::V1::HTTPIngressPath)?)
    end

    # :ditto:
    def paths=(value : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath))
      self.["paths"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "paths", accessor: "paths", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::HTTPIngressPath) },
      ])
end
  end
end
