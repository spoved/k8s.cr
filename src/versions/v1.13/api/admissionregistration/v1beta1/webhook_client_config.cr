# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1beta1::WebhookClientConfig; end

require "./service_reference"

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1beta1::WebhookClientConfig`.
  module Types::Api::Admissionregistration::V1beta1::WebhookClientConfig
    # `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
    abstract def ca_bundle : String?
    # :ditto:
    abstract def ca_bundle! : String
    # :ditto:
    abstract def ca_bundle? : String?
    # :ditto:
    abstract def ca_bundle=(value : String?)
    # `service` is a reference to the service for this webhook. Either `service` or `url` must be specified.
    #
    # If the webhook is running within the cluster, then you should use `service`.
    #
    # Port 443 will be used if it is open, otherwise it is an error.
    abstract def service : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?
    # :ditto:
    abstract def service! : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference
    # :ditto:
    abstract def service? : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?
    # :ditto:
    abstract def service=(value : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?)
    # `url` gives the location of the webhook, in standard URL form (`scheme://host:[[port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.)]([port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.))
    #
    # The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.
    #
    # Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.
    #
    # The scheme must be "https"; the URL must begin with "https://".
    #
    # A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
    #
    # Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments ("#...") and query parameters ("?...") are not allowed, either.
    abstract def url : String?
    # :ditto:
    abstract def url! : String
    # :ditto:
    abstract def url? : String?
    # :ditto:
    abstract def url=(value : String?)
  end

  # WebhookClientConfig contains the information to make a TLS connection with the webhook
  @[::K8S::Properties(
    ca_bundle: {key: "caBundle", accessor: "ca_bundle", kind: "String", nilable: true, default: nil, read_only: false, description: "`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service: {key: "service", accessor: "service", kind: "::K8S::Api::Admissionregistration::V1beta1::ServiceReference", nilable: true, default: nil, read_only: false, description: "`service` is a reference to the service for this webhook. Either `service` or `url` must be specified.\n\nIf the webhook is running within the cluster, then you should use `service`.\n\nPort 443 will be used if it is open, otherwise it is an error.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    url: {key: "url", accessor: "url", kind: "String", nilable: true, default: nil, read_only: false, description: "`url` gives the location of the webhook, in standard URL form (`scheme://host:[port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.)\n\nThe `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.\n\nPlease note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.\n\nThe scheme must be \"https\"; the URL must begin with \"https://\".\n\nA path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.\n\nAttempting to use a user or basic auth e.g. \"user:password@\" is not allowed. Fragments (\"#...\") and query parameters (\"?...\") are not allowed, either.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Admissionregistration::V1beta1::WebhookClientConfig < ::K8S::GenericObject
    include ::K8S::Types::Api::Admissionregistration::V1beta1::WebhookClientConfig

    # `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
    def ca_bundle : String?
      self.["caBundle"].as(String?)
    end

    # :ditto:
    def ca_bundle! : String
      self.["caBundle"].as(String?).not_nil!
    end

    # :ditto:
    def ca_bundle? : String?
      self.["caBundle"]?.as(String?)
    end

    # :ditto:
    def ca_bundle=(value : String?)
      self.["caBundle"] = value
    end

    # `service` is a reference to the service for this webhook. Either `service` or `url` must be specified.
    #
    # If the webhook is running within the cluster, then you should use `service`.
    #
    # Port 443 will be used if it is open, otherwise it is an error.
    def service : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?
      self.["service"].as(::K8S::Api::Admissionregistration::V1beta1::ServiceReference?)
    end

    # :ditto:
    def service! : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference
      self.["service"].as(::K8S::Api::Admissionregistration::V1beta1::ServiceReference?).not_nil!
    end

    # :ditto:
    def service? : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?
      self.["service"]?.as(::K8S::Api::Admissionregistration::V1beta1::ServiceReference?)
    end

    # :ditto:
    def service=(value : ::K8S::Api::Admissionregistration::V1beta1::ServiceReference?)
      self.["service"] = value
    end

    # `url` gives the location of the webhook, in standard URL form (`scheme://host:[[port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.)]([port/path`). Exactly one of `url` or `service` must be specified.](port/path`). Exactly one of `url` or `service` must be specified.))
    #
    # The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.
    #
    # Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.
    #
    # The scheme must be "https"; the URL must begin with "https://".
    #
    # A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
    #
    # Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments ("#...") and query parameters ("?...") are not allowed, either.
    def url : String?
      self.["url"].as(String?)
    end

    # :ditto:
    def url! : String
      self.["url"].as(String?).not_nil!
    end

    # :ditto:
    def url? : String?
      self.["url"]?.as(String?)
    end

    # :ditto:
    def url=(value : String?)
      self.["url"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "caBundle", accessor: "ca_bundle", nilable: true, read_only: false, default: nil, kind: String },
        { key: "service", accessor: "service", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Admissionregistration::V1beta1::ServiceReference },
        { key: "url", accessor: "url", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
