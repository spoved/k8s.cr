# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::WindowsSecurityContextOptions; end

module K8S
  # Namespace holding the types for `Api::Core::V1::WindowsSecurityContextOptions`.
  module Types::Api::Core::V1::WindowsSecurityContextOptions
    # GMSACredentialSpec is where the GMSA admission webhook ([[https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.))
    abstract def gmsa_credential_spec : String?
    # :ditto:
    abstract def gmsa_credential_spec! : String
    # :ditto:
    abstract def gmsa_credential_spec? : String?
    # :ditto:
    abstract def gmsa_credential_spec=(value : String)
    # GMSACredentialSpecName is the name of the GMSA credential spec to use.
    abstract def gmsa_credential_spec_name : String?
    # :ditto:
    abstract def gmsa_credential_spec_name! : String
    # :ditto:
    abstract def gmsa_credential_spec_name? : String?
    # :ditto:
    abstract def gmsa_credential_spec_name=(value : String)
    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_user_name : String?
    # :ditto:
    abstract def run_as_user_name! : String
    # :ditto:
    abstract def run_as_user_name? : String?
    # :ditto:
    abstract def run_as_user_name=(value : String)
  end

  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  @[::K8S::Properties(
    gmsa_credential_spec: {key: "gmsaCredentialSpec", accessor: "gmsa_credential_spec", kind: "String", nilable: true, default: nil, read_only: false, description: "GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    gmsa_credential_spec_name: {key: "gmsaCredentialSpecName", accessor: "gmsa_credential_spec_name", kind: "String", nilable: true, default: nil, read_only: false, description: "GMSACredentialSpecName is the name of the GMSA credential spec to use.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    run_as_user_name: {key: "runAsUserName", accessor: "run_as_user_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::WindowsSecurityContextOptions < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::WindowsSecurityContextOptions
    k8s_object_accessor("gmsaCredentialSpec", gmsa_credential_spec : String, true, false, "GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)")
    k8s_object_accessor("gmsaCredentialSpecName", gmsa_credential_spec_name : String, true, false, "GMSACredentialSpecName is the name of the GMSA credential spec to use.")
    k8s_object_accessor("runAsUserName", run_as_user_name : String, true, false, "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.")

    def initialize(*, gmsa_credential_spec : String? = nil, gmsa_credential_spec_name : String? = nil, run_as_user_name : String? = nil)
      super()
      self.["gmsaCredentialSpec"] = gmsa_credential_spec
      self.["gmsaCredentialSpecName"] = gmsa_credential_spec_name
      self.["runAsUserName"] = run_as_user_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "gmsaCredentialSpec", accessor: "gmsa_credential_spec", nilable: true, read_only: false, default: nil, kind: String},
      {key: "gmsaCredentialSpecName", accessor: "gmsa_credential_spec_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "runAsUserName", accessor: "run_as_user_name", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
