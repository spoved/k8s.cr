# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::WindowsSecurityContextOptions; end

module K8S
  # Namespace holding the types for `Api::Core::V1::WindowsSecurityContextOptions`.
  module Types::Api::Core::V1::WindowsSecurityContextOptions
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # GMSACredentialSpec is where the GMSA admission webhook ([[https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.))
    abstract def gmsa_credential_spec : String?
    # :ditto:
    abstract def gmsa_credential_spec! : String
    # :ditto:
    abstract def gmsa_credential_spec? : String?
    # :ditto:
    abstract def gmsa_credential_spec=(value : String?)
    # GMSACredentialSpecName is the name of the GMSA credential spec to use.
    abstract def gmsa_credential_spec_name : String?
    # :ditto:
    abstract def gmsa_credential_spec_name! : String
    # :ditto:
    abstract def gmsa_credential_spec_name? : String?
    # :ditto:
    abstract def gmsa_credential_spec_name=(value : String?)
    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    abstract def run_as_user_name : String?
    # :ditto:
    abstract def run_as_user_name! : String
    # :ditto:
    abstract def run_as_user_name? : String?
    # :ditto:
    abstract def run_as_user_name=(value : String?)
  end

  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  @[::K8S::Properties(
    gmsa_credential_spec: {key: "gmsaCredentialSpec", accessor: "gmsa_credential_spec", kind: "String", nilable: true, default: nil, read_only: false, description: "GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)"},
    gmsa_credential_spec_name: {key: "gmsaCredentialSpecName", accessor: "gmsa_credential_spec_name", kind: "String", nilable: true, default: nil, read_only: false, description: "GMSACredentialSpecName is the name of the GMSA credential spec to use."},
    run_as_user_name: {key: "runAsUserName", accessor: "run_as_user_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},
  )]
  class Api::Core::V1::WindowsSecurityContextOptions < ::K8S::Types::Api::Core::V1::WindowsSecurityContextOptions::Instance
    include ::K8S::Types::Api::Core::V1::WindowsSecurityContextOptions
    include ::K8S::Kubernetes::Object

    # GMSACredentialSpec is where the GMSA admission webhook ([[https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.))
    def gmsa_credential_spec : String?
      self.["gmsaCredentialSpec"].as(String?)
    end

    # :ditto:
    def gmsa_credential_spec! : String
      self.["gmsaCredentialSpec"].as(String?).not_nil!
    end

    # :ditto:
    def gmsa_credential_spec? : String?
      self.["gmsaCredentialSpec"]?.as(String?)
    end

    # :ditto:
    def gmsa_credential_spec=(value : String?)
      self.["gmsaCredentialSpec"] = value
    end

    # GMSACredentialSpecName is the name of the GMSA credential spec to use.
    def gmsa_credential_spec_name : String?
      self.["gmsaCredentialSpecName"].as(String?)
    end

    # :ditto:
    def gmsa_credential_spec_name! : String
      self.["gmsaCredentialSpecName"].as(String?).not_nil!
    end

    # :ditto:
    def gmsa_credential_spec_name? : String?
      self.["gmsaCredentialSpecName"]?.as(String?)
    end

    # :ditto:
    def gmsa_credential_spec_name=(value : String?)
      self.["gmsaCredentialSpecName"] = value
    end

    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    def run_as_user_name : String?
      self.["runAsUserName"].as(String?)
    end

    # :ditto:
    def run_as_user_name! : String
      self.["runAsUserName"].as(String?).not_nil!
    end

    # :ditto:
    def run_as_user_name? : String?
      self.["runAsUserName"]?.as(String?)
    end

    # :ditto:
    def run_as_user_name=(value : String?)
      self.["runAsUserName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "gmsaCredentialSpec", accessor: "gmsa_credential_spec", nilable: true, read_only: false, default: nil, kind: String },
        { key: "gmsaCredentialSpecName", accessor: "gmsa_credential_spec_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "runAsUserName", accessor: "run_as_user_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
