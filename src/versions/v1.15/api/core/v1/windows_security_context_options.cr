# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("WindowsSecurityContextOptions",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "gmsa_credential_spec", kind: String, key: "gmsaCredentialSpec", nilable: true, read_only: false, description: "GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.)"},
    {name: "gmsa_credential_spec_name", kind: String, key: "gmsaCredentialSpecName", nilable: true, read_only: false, description: "GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."},

  ]
)
