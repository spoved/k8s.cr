require "../spec_helper"

Spectator.describe K8S::Kubernetes::Resource do
  it "#from_json" do
    r = K8S::Kubernetes::Resource.from_json(fixture("apis", "namespace-v1.json"))
    expect(r).to be_a(K8S::Api::Core::V1::Namespace)
  end

  it "#from_file" do
    r = K8S::Resource.from_file(fixture_path("stacks", "whoami.yaml"))
    expect(r.size).to eq(3)
    expect(r[0]).to be_a(K8S::Api::Apps::V1::Deployment)
    expect(r[1]).to be_a(K8S::Api::Core::V1::Service)
    expect(r[2]).to be_a(K8S::Api::Networking::V1::Ingress)
  end
end
