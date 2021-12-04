require "json"
require "yaml"

abstract class ::K8S::Kubernetes::Resource
  module Object
    abstract def metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ObjectMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ObjectMeta.new
    end
  end

  module List
    abstract def metadata : Apimachinery::Apis::Meta::V1::ListMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ListMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ListMeta.new
    end
  end

  include JSON::Serializable
  include YAML::Serializable

  abstract def api_version : String
  abstract def kind : String
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
