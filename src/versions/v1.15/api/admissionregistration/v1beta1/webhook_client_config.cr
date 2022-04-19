# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./service_reference"

::K8S::Kubernetes::Resource.define_object("WebhookClientConfig",
  namespace: "::K8S::Api::Admissionregistration::V1beta1",
  properties: [

    {name: "ca_bundle", kind: String, key: "caBundle", nilable: true, read_only: false, description: "`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used."},
    {name: "service", kind: ::K8S::Api::Admissionregistration::V1beta1::ServiceReference, key: "service", nilable: true, read_only: false, description: "`service` is a reference to the service for this webhook. Either `service` or `url` must be specified.\n\nIf the webhook is running within the cluster, then you should use `service`."},
    {name: "url", kind: String, key: "url", nilable: true, read_only: false, description: "`url` gives the location of the webhook, in standard URL form (`scheme://host:[port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.)\n\nThe `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.\n\nPlease note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.\n\nThe scheme must be \"https\"; the URL must begin with \"https://\".\n\nA path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.\n\nAttempting to use a user or basic auth e.g. \"user:password@\" is not allowed. Fragments (\"#...\") and query parameters (\"?...\") are not allowed, either."},

  ]
)
