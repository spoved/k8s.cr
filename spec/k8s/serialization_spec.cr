require "../spec_helper"

Spectator.describe K8S::Kubernetes::Resource do
  it "#from_json" do
    r = K8S::Kubernetes::Resource.from_json(fixture("apis", "namespace-v1.json"))
    expect(r).to be_a(K8S::Api::Core::V1::Namespace)
  end

  {% if (::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR >= 22) %}
    context "when 1.22 or higher" do
      it "#from_file" do
        r = K8S::Kubernetes::Resource.from_file(fixture_path("stacks", "whoami.yaml"))
        expect(r.size).to eq(3)
        expect(r[0]).to be_a(K8S::Api::Apps::V1::Deployment)
        expect(r[1]).to be_a(K8S::Api::Core::V1::Service)
        expect(r[2]).to be_a(K8S::Api::Networking::V1::Ingress)
      end
    end
  {% end %}

  {% if (::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR >= 16) %}
    it "crd list" do
      K8S::Kubernetes::Resource.from_file(fixture_path("apis", "customresourcedefinitionlist.json"))
    end
  {% else %}
    it "#from_file" do
      expect_raises(K8S::Error::UnknownResource, "Unknown resource: networking/v1/Ingress") do
        K8S::Kubernetes::Resource.from_file(fixture_path("stacks", "whoami.yaml"))
      end

      expect_raises(K8S::Error::UnknownResource, "Unknown resource: apiextensions/v1/CustomResourceDefinitionList") do
        K8S::Kubernetes::Resource.from_file(fixture_path("apis", "customresourcedefinitionlist.json"))
      end
    end
  {% end %}
end
