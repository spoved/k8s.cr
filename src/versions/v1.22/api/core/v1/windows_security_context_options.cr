# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  @[::K8S::Properties(
    gmsa_credential_spec: {type: String, nilable: true, key: "gmsaCredentialSpec", getter: false, setter: false},
    gmsa_credential_spec_name: {type: String, nilable: true, key: "gmsaCredentialSpecName", getter: false, setter: false},
    host_process: {type: Bool, nilable: true, key: "hostProcess", getter: false, setter: false},
    run_as_user_name: {type: String, nilable: true, key: "runAsUserName", getter: false, setter: false},
  )]
  class Api::Core::V1::WindowsSecurityContextOptions
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)
    @[::JSON::Field(key: "gmsaCredentialSpec", emit_null: false)]
    @[::YAML::Field(key: "gmsaCredentialSpec", emit_null: false)]
    property gmsa_credential_spec : String | Nil

    # GMSACredentialSpecName is the name of the GMSA credential spec to use.
    @[::JSON::Field(key: "gmsaCredentialSpecName", emit_null: false)]
    @[::YAML::Field(key: "gmsaCredentialSpecName", emit_null: false)]
    property gmsa_credential_spec_name : String | Nil

    # HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
    @[::JSON::Field(key: "hostProcess", emit_null: false)]
    @[::YAML::Field(key: "hostProcess", emit_null: false)]
    property host_process : Bool | Nil

    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "runAsUserName", emit_null: false)]
    @[::YAML::Field(key: "runAsUserName", emit_null: false)]
    property run_as_user_name : String | Nil

    def initialize(*, @gmsa_credential_spec : String | Nil = nil, @gmsa_credential_spec_name : String | Nil = nil, @host_process : Bool | Nil = nil, @run_as_user_name : String | Nil = nil)
    end
  end
end
