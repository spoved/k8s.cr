# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
  @[::K8S::Properties(
    nameservers: {type: Array(String), nilable: true, key: "nameservers", getter: false, setter: false},
    options: {type: Array(Api::Core::V1::PodDNSConfigOption), nilable: true, key: "options", getter: false, setter: false},
    searches: {type: Array(String), nilable: true, key: "searches", getter: false, setter: false},
  )]
  class Api::Core::V1::PodDNSConfig
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    @[::JSON::Field(key: "nameservers", emit_null: false)]
    @[::YAML::Field(key: "nameservers", emit_null: false)]
    property nameservers : Array(String) | Nil

    # A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    @[::JSON::Field(key: "options", emit_null: false)]
    @[::YAML::Field(key: "options", emit_null: false)]
    property options : Array(Api::Core::V1::PodDNSConfigOption) | Nil

    # A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    @[::JSON::Field(key: "searches", emit_null: false)]
    @[::YAML::Field(key: "searches", emit_null: false)]
    property searches : Array(String) | Nil

    def initialize(*, @nameservers : Array(String) | Nil = nil, @options : Array(Api::Core::V1::PodDNSConfigOption) | Nil = nil, @searches : Array(String) | Nil = nil)
    end
  end
end
