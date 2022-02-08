require "spectator"
require "log"
require "../src/k8s"

# {% begin %}
#   {% flag_provided = false %}
#   {% for ver in (11..23) %}
#     {% flag = :k8s_v1 + "." + "#{ver}" %}
#     {% if flag?(flag) %}
#       {% flag_provided = true %}
#       require "../src/versions/v1.{{ver}}"
#     {% end %}
#   {% end %}
#   {% unless flag_provided %}
#     {% raise "No Kubernetes version flag provided. Provide flag or require a specific version: kube-client/{kube-api-version}" %}
#   {% end %}
# {% end %}

require "./fixture_helper"
extend FixtureHelpers

Spectator.configure do |config|
  config.before_suite {
  # Log.setup(:trace)
  }
end
