require "../../spec_helper"

{% begin %}
  {% flag_provided = false %}
  {% for ver in (11..23) %}
    {% flag = :k8s_v1 + "." + "#{ver}" %}
    {% if flag?(flag) %}
      {% flag_provided = true %}
      require "../../../src/versions/v1.{{ver}}"
    {% end %}
  {% end %}
  {% unless flag_provided %}
    {% raise "No Kubernetes version flag provided. Provide flag or require a specific version: kube-client/{kube-api-version}" %}
  {% end %}
{% end %}

Spectator.describe ::K8S::Kubernetes::Resource do
  it ".from_file" do
    obj = ::K8S::Kubernetes::Resource.from_file(fixture_path("api/nodes-get.json")).first
    expect(obj).to be_a(K8S::Api::Core::V1::Node)
  end
end
