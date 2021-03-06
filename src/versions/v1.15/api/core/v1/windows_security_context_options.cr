# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  class Api::Core::V1::WindowsSecurityContextOptions
    # GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.)
    property gmsa_credential_spec : String | Nil

    # GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.
    property gmsa_credential_spec_name : String | Nil

    ::YAML.mapping({
      gmsa_credential_spec:      {type: String, nilable: true, key: "gmsaCredentialSpec", getter: false, setter: false},
      gmsa_credential_spec_name: {type: String, nilable: true, key: "gmsaCredentialSpecName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      gmsa_credential_spec:      {type: String, nilable: true, key: "gmsaCredentialSpec", getter: false, setter: false},
      gmsa_credential_spec_name: {type: String, nilable: true, key: "gmsaCredentialSpecName", getter: false, setter: false},
    }, true)

    def initialize(*, @gmsa_credential_spec : String | Nil = nil, @gmsa_credential_spec_name : String | Nil = nil)
    end
  end
end
