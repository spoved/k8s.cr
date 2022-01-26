# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SeccompProfile; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SeccompProfile`.
  module Types::Api::Core::V1::SeccompProfile
    # localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
    abstract def localhost_profile : String?
    # :ditto:
    abstract def localhost_profile! : String
    # :ditto:
    abstract def localhost_profile? : String?
    # :ditto:
    abstract def localhost_profile=(value : String?)
    # type indicates which kind of seccomp profile will be applied. Valid options are:
    #
    # Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
    #
    # Possible enum values:
    #  - `"Localhost"` indicates a profile defined in a file on the node should be used. The file's location relative to [[<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.)]([<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.))
    #  - `"RuntimeDefault"` represents the default container runtime seccomp profile.
    #  - `"Unconfined"` indicates no seccomp profile is applied (A.K.A. unconfined).
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # SeccompProfile defines a [pod/container's seccomp profile settings. Only one profile source may be set.](pod/container's seccomp profile settings. Only one profile source may be set.)
  @[::K8S::Properties(
    localhost_profile: {key: "localhostProfile", accessor: "localhost_profile", kind: "String", nilable: true, default: nil, read_only: false, description: "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type indicates which kind of seccomp profile will be applied. Valid options are:\n\nLocalhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.\n\nPossible enum values:\n - `\"Localhost\"` indicates a profile defined in a file on the node should be used. The file's location relative to [<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.)\n - `\"RuntimeDefault\"` represents the default container runtime seccomp profile.\n - `\"Unconfined\"` indicates no seccomp profile is applied (A.K.A. unconfined).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SeccompProfile < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::SeccompProfile

    # localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
    def localhost_profile : String?
      self.["localhostProfile"].as(String?)
    end

    # :ditto:
    def localhost_profile! : String
      self.["localhostProfile"].as(String?).not_nil!
    end

    # :ditto:
    def localhost_profile? : String?
      self.["localhostProfile"]?.as(String?)
    end

    # :ditto:
    def localhost_profile=(value : String?)
      self.["localhostProfile"] = value
    end

    # type indicates which kind of seccomp profile will be applied. Valid options are:
    #
    # Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
    #
    # Possible enum values:
    #  - `"Localhost"` indicates a profile defined in a file on the node should be used. The file's location relative to [[<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.)]([<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.))
    #  - `"RuntimeDefault"` represents the default container runtime seccomp profile.
    #  - `"Unconfined"` indicates no seccomp profile is applied (A.K.A. unconfined).
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "localhostProfile", accessor: "localhost_profile", nilable: true, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
