# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::HTTPIngressRuleValue; end

require "./http_ingress_path"

module K8S
  # Namespace holding the types for `Api::Networking::V1::HTTPIngressRuleValue`.
  module Types::Api::Networking::V1::HTTPIngressRuleValue
    # A collection of paths that map requests to backends.
    abstract def paths : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)?
    # :ditto:
    abstract def paths! : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)
    # :ditto:
    abstract def paths? : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)?
    # :ditto:
    abstract def paths=(value : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath))
  end

  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  @[::K8S::Properties(
    paths: {key: "paths", accessor: "paths", kind: "::Array(::K8S::Api::Networking::V1::HTTPIngressPath)", nilable: false, default: nil, read_only: false, description: "A collection of paths that map requests to backends.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::HTTPIngressRuleValue < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::HTTPIngressRuleValue
    k8s_object_accessor("paths", paths : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath), false, false, "A collection of paths that map requests to backends.")

    def initialize(*, paths : ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)? = nil)
      super()
      self.["paths"] = paths
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "paths", accessor: "paths", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::HTTPIngressPath)},
    ])
  end
end
