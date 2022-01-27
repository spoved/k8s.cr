# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodDNSConfig; end

require "./pod_dns_config_option"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodDNSConfig`.
  module Types::Api::Core::V1::PodDNSConfig
    # A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    abstract def nameservers : ::Array(String)?
    # :ditto:
    abstract def nameservers! : ::Array(String)
    # :ditto:
    abstract def nameservers? : ::Array(String)?
    # :ditto:
    abstract def nameservers=(value : ::Array(String))
    # A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    abstract def options : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption)?
    # :ditto:
    abstract def options! : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption)
    # :ditto:
    abstract def options? : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption)?
    # :ditto:
    abstract def options=(value : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption))
    # A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    abstract def searches : ::Array(String)?
    # :ditto:
    abstract def searches! : ::Array(String)
    # :ditto:
    abstract def searches? : ::Array(String)?
    # :ditto:
    abstract def searches=(value : ::Array(String))
  end

  # PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
  @[::K8S::Properties(
    nameservers: {key: "nameservers", accessor: "nameservers", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    options: {key: "options", accessor: "options", kind: "::Array(::K8S::Api::Core::V1::PodDNSConfigOption)", nilable: true, default: nil, read_only: false, description: "A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    searches: {key: "searches", accessor: "searches", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodDNSConfig < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodDNSConfig
    k8s_object_accessor("nameservers", nameservers : ::Array(String), true, false, "A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.")
    k8s_object_accessor("options", options : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption), true, false, "A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.")
    k8s_object_accessor("searches", searches : ::Array(String), true, false, "A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.")

    def initialize(*, nameservers : ::Array(String)? = nil, options : ::Array(::K8S::Api::Core::V1::PodDNSConfigOption)? = nil, searches : ::Array(String)? = nil)
      super()
      self.["nameservers"] = nameservers
      self.["options"] = options
      self.["searches"] = searches
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "nameservers", accessor: "nameservers", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "options", accessor: "options", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodDNSConfigOption)},
      {key: "searches", accessor: "searches", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
