# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Projection that may be projected along with other supported volume types
class K8S::V1_6_1::Kubernetes::Api::V1::VolumeProjection
  # information about the configMap data to project
  property config_map : ::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMapProjection

  # information about the downwardAPI data to project
  property downward_api : ::K8S::V1_6_1::Kubernetes::Api::V1::DownwardAPIProjection

  # information about the secret data to project
  property secret : ::K8S::V1_6_1::Kubernetes::Api::V1::SecretProjection

  YAML.mapping({config_map:   {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMapProjection, nilable: true, key: configMap, getter: false, setter: false},
                downward_api: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::DownwardAPIProjection, nilable: true, key: downwardAPI, getter: false, setter: false},
                secret:       {type: ::K8S::V1_6_1::Kubernetes::Api::V1::SecretProjection, nilable: true, key: secret, getter: false, setter: false}}, true)

  JSON.mapping({config_map:   {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMapProjection, nilable: true, key: configMap, getter: false, setter: false},
                downward_api: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::DownwardAPIProjection, nilable: true, key: downwardAPI, getter: false, setter: false},
                secret:       {type: ::K8S::V1_6_1::Kubernetes::Api::V1::SecretProjection, nilable: true, key: secret, getter: false, setter: false}}, true)

  def initialize(@config_map = nil, @downward_api = nil, @secret = nil)
  end
end
