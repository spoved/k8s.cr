require "hashdiff"
require "yaml"
require "json"

module K8S
  # Miscellaneous helpers
  module Util
    extend self
    PATH_TR_MAP = {"~" => "~0", "/" => "~1"}
    PATH_REGEX  = %r{(/|~(?!1))}
  end
end

require "./util/*"
