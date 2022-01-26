# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::HTTPIngressPath; end

require "./ingress_backend"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::HTTPIngressPath`.
  module Types::Api::Extensions::V1beta1::HTTPIngressPath
    # Backend defines the referenced service endpoint to which the traffic will be forwarded to.
    abstract def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend
    # :ditto:
    abstract def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
    # :ditto:
    abstract def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend)
    # Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. When unspecified, all paths from incoming requests are matched.
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String?)
    # PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
    #   done on a path element by element basis. A path element refers is the
    #   list of labels in the path split by the '/' separator. A request is a
    #   match for path p if every p is an element-wise prefix of p of the
    #   request path. Note that if the last element of the path is a substring
    #   of the last element in request path, it is not a match (e.g. [[/foo/bar](/foo/bar)]([/foo/bar](/foo/bar))
    #   matches [[/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).)]([/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).))
    # * ImplementationSpecific: Interpretation of the Path matching is up to
    #   the IngressClass. Implementations can treat this as a separate PathType
    #   or treat it identically to Prefix or Exact path types.
    # Implementations are required to support all path types. Defaults to ImplementationSpecific.
    abstract def path_type : String?
    # :ditto:
    abstract def path_type! : String
    # :ditto:
    abstract def path_type? : String?
    # :ditto:
    abstract def path_type=(value : String?)
  end

  # HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
  @[::K8S::Properties(
    backend: {key: "backend", accessor: "backend", kind: "::K8S::Api::Extensions::V1beta1::IngressBackend", nilable: false, default: nil, read_only: false, description: "Backend defines the referenced service endpoint to which the traffic will be forwarded to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. When unspecified, all paths from incoming requests are matched.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path_type: {key: "pathType", accessor: "path_type", kind: "String", nilable: true, default: nil, read_only: false, description: "PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is\n  done on a path element by element basis. A path element refers is the\n  list of labels in the path split by the '/' separator. A request is a\n  match for path p if every p is an element-wise prefix of p of the\n  request path. Note that if the last element of the path is a substring\n  of the last element in request path, it is not a match (e.g. [/foo/bar](/foo/bar)\n  matches [/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).)\n* ImplementationSpecific: Interpretation of the Path matching is up to\n  the IngressClass. Implementations can treat this as a separate PathType\n  or treat it identically to Prefix or Exact path types.\nImplementations are required to support all path types. Defaults to ImplementationSpecific.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::HTTPIngressPath < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::HTTPIngressPath

    # Backend defines the referenced service endpoint to which the traffic will be forwarded to.
    def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend
      self.["backend"].as(::K8S::Api::Extensions::V1beta1::IngressBackend)
    end

    # :ditto:
    def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
      self.["backend"].as(::K8S::Api::Extensions::V1beta1::IngressBackend).not_nil!
    end

    # :ditto:
    def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
      self.["backend"]?.as(::K8S::Api::Extensions::V1beta1::IngressBackend?)
    end

    # :ditto:
    def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend)
      self.["backend"] = value
    end

    # Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. When unspecified, all paths from incoming requests are matched.
    def path : String?
      self.["path"].as(String?)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String?).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String?)
      self.["path"] = value
    end

    # PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
    #   done on a path element by element basis. A path element refers is the
    #   list of labels in the path split by the '/' separator. A request is a
    #   match for path p if every p is an element-wise prefix of p of the
    #   request path. Note that if the last element of the path is a substring
    #   of the last element in request path, it is not a match (e.g. [[/foo/bar](/foo/bar)]([/foo/bar](/foo/bar))
    #   matches [[/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).)]([/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).))
    # * ImplementationSpecific: Interpretation of the Path matching is up to
    #   the IngressClass. Implementations can treat this as a separate PathType
    #   or treat it identically to Prefix or Exact path types.
    # Implementations are required to support all path types. Defaults to ImplementationSpecific.
    def path_type : String?
      self.["pathType"].as(String?)
    end

    # :ditto:
    def path_type! : String
      self.["pathType"].as(String?).not_nil!
    end

    # :ditto:
    def path_type? : String?
      self.["pathType"]?.as(String?)
    end

    # :ditto:
    def path_type=(value : String?)
      self.["pathType"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "backend", accessor: "backend", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::IngressBackend },
        { key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "pathType", accessor: "path_type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
