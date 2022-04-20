# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_backend"

::K8S::Kubernetes::Resource.define_object("HTTPIngressPath",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "backend", kind: ::K8S::Api::Extensions::V1beta1::IngressBackend, key: "backend", nilable: false, read_only: false, description: "Backend defines the referenced service endpoint to which the traffic will be forwarded to."},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the [egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.)"},

  ]
)
