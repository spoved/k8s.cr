# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::HTTPIngressPath; end

require "./ingress_backend"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::HTTPIngressPath`.
  module Types::Api::Extensions::V1beta1::HTTPIngressPath
    # Backend defines the referenced service endpoint to which the traffic will be forwarded to.
    abstract def backend : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend! : ::K8S::Api::Extensions::V1beta1::IngressBackend
    # :ditto:
    abstract def backend? : ::K8S::Api::Extensions::V1beta1::IngressBackend?
    # :ditto:
    abstract def backend=(value : ::K8S::Api::Extensions::V1beta1::IngressBackend)
    # Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the [[egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.)]([egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.))
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
  end

  # HTTPIngressPath associates a path regex with a backend. Incoming urls matching the path are forwarded to the backend.
  @[::K8S::Properties(
    backend: {key: "backend", accessor: "backend", kind: "::K8S::Api::Extensions::V1beta1::IngressBackend", nilable: false, default: nil, read_only: false, description: "Backend defines the referenced service endpoint to which the traffic will be forwarded to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the [egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::HTTPIngressPath < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::HTTPIngressPath
    k8s_object_accessor("backend", backend : ::K8S::Api::Extensions::V1beta1::IngressBackend, false, false, "Backend defines the referenced service endpoint to which the traffic will be forwarded to.")
    k8s_object_accessor("path", path : String, true, false, "Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the [egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.)")

    def initialize(*, backend : ::K8S::Api::Extensions::V1beta1::IngressBackend? = nil, path : String? = nil)
      super()
      self.["backend"] = backend
      self.["path"] = path
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "backend", accessor: "backend", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Extensions::V1beta1::IngressBackend},
      {key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
