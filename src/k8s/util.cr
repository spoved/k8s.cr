require "hashdiff"
require "yaml"
require "json"

module K8S
  # Miscellaneous helpers
  module Util
    extend self
    PATH_TR_MAP = {"~" => "~0", "/" => "~1"}
    PATH_REGEX  = %r{(/|~(?!1))}

    def new_resource(obj)
      if obj[:kind]? && obj[:kind] == "APIResourceList"
        return K8S::Apimachinery::Apis::Meta::V1::APIResourceList.new(obj)
      end

      api_ver = (obj[:apiVersion]? || obj[:api_version]?)
      api_ver = api_ver.as_s if api_ver.is_a?(JSON::Any) || api_ver.is_a?(YAML::Any)

      # NOTE: This may be rancher specific api behavior.
      if obj[:type]? == "error" && obj[:status]? =~ /^4\d\d/ && api_ver.nil?
        return K8S::Apimachinery::Apis::Meta::V1::Status.new(
          code: obj[:status].as(String).to_i,
          message: obj[:message].as(String),
        )
      end

      api_ver = api_ver.as(String?)
      raise K8S::Kubernetes::Resource::Error.new "Undefined api version" if api_ver.nil?

      if api_ver =~ /\//
        parts = api_ver.split("/")
        ver = parts.pop
        group = parts.empty? ? "" : parts.shift
        k8s_new_resource(group: group, ver: ver, kind: obj[:kind], obj: obj)
      else
        k8s_new_resource(group: "", ver: api_ver, kind: obj[:kind], obj: obj)
      end
    end

    def get_resource_klass(obj)
      api_ver = (obj[:apiVersion]? || obj[:api_version]?)
      api_ver = api_ver.as_s if api_ver.is_a?(JSON::Any) || api_ver.is_a?(YAML::Any)

      api_ver = api_ver.as(String?)
      return nil if api_ver.nil?

      if api_ver =~ /\//
        parts = api_ver.split("/")
        ver = parts.pop
        group = parts.empty? ? "" : parts.shift
        k8s_resource_class(group: group, ver: ver, kind: obj[:kind])
      else
        k8s_resource_class(group: "", ver: api_ver, kind: obj[:kind])
      end
    end
  end
end

require "./util/*"
