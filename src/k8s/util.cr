require "hashdiff"
require "yaml"
require "json"

module K8S
  # Miscellaneous helpers
  module Util
    extend self
    PATH_TR_MAP = {"~" => "~0", "/" => "~1"}
    PATH_REGEX  = %r{(/|~(?!1))}

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
