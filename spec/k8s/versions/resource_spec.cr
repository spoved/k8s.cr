require "../../spec_helper"
require "../../load_version"

Spectator.describe ::K8S::Kubernetes::Resource do
  it ".from_file" do
    obj = ::K8S::Kubernetes::Resource.from_file(fixture_path("api/nodes-get.json")).first
    expect(obj).to be_a(K8S::Api::Core::V1::Node)
  end
end
