# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_backend"

::K8S::Kubernetes::Resource.define_object("HTTPIngressPath",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "backend", kind: ::K8S::Api::Networking::V1::IngressBackend, key: "backend", nilable: false, read_only: false, description: "backend defines the referenced service endpoint to which the traffic will be forwarded to."},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value \"Exact\" or \"Prefix\"."},
    {name: "path_type", kind: String, key: "pathType", nilable: false, read_only: false, description: "pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is\n  done on a path element by element basis. A path element refers is the\n  list of labels in the path split by the '/' separator. A request is a\n  match for path p if every p is an element-wise prefix of p of the\n  request path. Note that if the last element of the path is a substring\n  of the last element in request path, it is not a match (e.g. [/foo/bar](/foo/bar)\n  matches [/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).)\n* ImplementationSpecific: Interpretation of the Path matching is up to\n  the IngressClass. Implementations can treat this as a separate PathType\n  or treat it identically to Prefix or Exact path types.\nImplementations are required to support all path types."},

  ]
)
