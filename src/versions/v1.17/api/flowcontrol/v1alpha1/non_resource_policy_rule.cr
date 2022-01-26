# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::NonResourcePolicyRule; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::NonResourcePolicyRule`.
  module Types::Api::Flowcontrol::V1alpha1::NonResourcePolicyRule
    # `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
    #   - [["/healthz" is legal]("/healthz" is legal)](["/healthz" is legal]("/healthz" is legal))
    #   - [["/hea*" is illegal]("/hea*" is illegal)](["/hea*" is illegal]("/hea*" is illegal))
    #   - [["/hea" is legal but matches nothing]("/hea" is legal but matches nothing)](["/hea" is legal but matches nothing]("/hea" is legal but matches nothing))
    #   - [["/hea/*" also matches nothing]("/hea/*" also matches nothing)](["/hea/*" also matches nothing]("/hea/*" also matches nothing))
    #   - [["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.)](["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.))
    # "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    abstract def non_resource_urls : ::Set(String)
    # :ditto:
    abstract def non_resource_urls! : ::Set(String)
    # :ditto:
    abstract def non_resource_urls? : ::Set(String)?
    # :ditto:
    abstract def non_resource_urls=(value : ::Set(String))
    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
    abstract def verbs : ::Set(String)
    # :ditto:
    abstract def verbs! : ::Set(String)
    # :ditto:
    abstract def verbs? : ::Set(String)?
    # :ditto:
    abstract def verbs=(value : ::Set(String))
  end

  # NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
  @[::K8S::Properties(
    non_resource_urls: {key: "nonResourceURLs", accessor: "non_resource_urls", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:\n  - [\"/healthz\" is legal](\"/healthz\" is legal)\n  - [\"/hea*\" is illegal](\"/hea*\" is illegal)\n  - [\"/hea\" is legal but matches nothing](\"/hea\" is legal but matches nothing)\n  - [\"/hea/*\" also matches nothing](\"/hea/*\" also matches nothing)\n  - [\"/healthz/*\" matches all per-component health checks.](\"/healthz/*\" matches all per-component health checks.)\n\"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Set(String)", nilable: false, default: nil, read_only: false, description: "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::NonResourcePolicyRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::NonResourcePolicyRule

    # `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
    #   - [["/healthz" is legal]("/healthz" is legal)](["/healthz" is legal]("/healthz" is legal))
    #   - [["/hea*" is illegal]("/hea*" is illegal)](["/hea*" is illegal]("/hea*" is illegal))
    #   - [["/hea" is legal but matches nothing]("/hea" is legal but matches nothing)](["/hea" is legal but matches nothing]("/hea" is legal but matches nothing))
    #   - [["/hea/*" also matches nothing]("/hea/*" also matches nothing)](["/hea/*" also matches nothing]("/hea/*" also matches nothing))
    #   - [["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.)](["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.))
    # "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    def non_resource_urls : ::Set(String)
      self.["nonResourceURLs"].as(::Set(String))
    end

    # :ditto:
    def non_resource_urls! : ::Set(String)
      self.["nonResourceURLs"].as(::Set(String)).not_nil!
    end

    # :ditto:
    def non_resource_urls? : ::Set(String)?
      self.["nonResourceURLs"]?.as(::Set(String)?)
    end

    # :ditto:
    def non_resource_urls=(value : ::Set(String))
      self.["nonResourceURLs"] = value
    end

    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
    def verbs : ::Set(String)
      self.["verbs"].as(::Set(String))
    end

    # :ditto:
    def verbs! : ::Set(String)
      self.["verbs"].as(::Set(String)).not_nil!
    end

    # :ditto:
    def verbs? : ::Set(String)?
      self.["verbs"]?.as(::Set(String)?)
    end

    # :ditto:
    def verbs=(value : ::Set(String))
      self.["verbs"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nonResourceURLs", accessor: "non_resource_urls", nilable: false, read_only: false, default: nil, kind: ::Set(String) },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Set(String) },
      ])
end
  end
end
