# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("WindowsSecurityContextOptions",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "gmsa_credential_spec", kind: String, key: "gmsaCredentialSpec", nilable: true, read_only: false, description: "GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)"},
    {name: "gmsa_credential_spec_name", kind: String, key: "gmsaCredentialSpecName", nilable: true, read_only: false, description: "GMSACredentialSpecName is the name of the GMSA credential spec to use."},
    {name: "host_process", kind: ::Bool, key: "hostProcess", nilable: true, read_only: false, description: "HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true."},
    {name: "run_as_user_name", kind: String, key: "runAsUserName", nilable: true, read_only: false, description: "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."},

  ]
)
